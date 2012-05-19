module TicketMaster::Provider
  module Bugshelf
    # Ticket class for ticketmaster-bugshelf
    #
    
    class Ticket < TicketMaster::Provider::Base::Ticket
      API = BugshelfAPI::Issue # The class to access the api's tickets

      def initialize(*object) 
        if object.first
          object = object.first
          @system_data = object

          unless object.is_a? Hash
            hash = {:id => object.string_id,
                    :title => object.title,
                    :description => object.details,
                    :created_at => object.created_at,
                    :updated_at => object.updated_at}

          else
            hash = object
          end
          super hash
        end
      end

      def self.search(project_id, options = {}, limit = 1000)
       tickets = API.find(:all, :params => {:project_id => project_id, :per_page => limit})
       search_by_attribute(tickets, options, limit)
      end

      def self.create(*options)
        if options.first.is_a? Hash
          options.first.merge!(
            :details => options.first.delete(:description)
          )
          task = API.new(options.first)
          task.save

          puts task.inspect

          ticket = self.new task
          ticket
        end
      end

      def destroy(*options)
        @system_data.destroy.is_a?(Net::HTTPOK)
      end
    end
  end
end
