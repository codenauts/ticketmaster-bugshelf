require File.dirname(__FILE__) + '/bugshelf/bugshelf-api.rb'

%w{ bugshelf ticket project }.each do |f|
  require File.dirname(__FILE__) + '/provider/' + f + '.rb';
end
