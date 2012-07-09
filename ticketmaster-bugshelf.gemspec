# -*- encoding: utf-8 -*-
require File.dirname(__FILE__) + "/lib/ticketmaster-bugshelf/version"

Gem::Specification.new do |s|
  s.name        = "ticketmaster-bugshelf"
  s.version     = Ticketmaster::Bugshelf::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Thomas Steinhausen", "Thomas Dohmke"]
  s.email       = ["ts@image-addicts.de", "thomas@dohmke.de"]
  s.homepage    = "http://bugshelf.com"
  s.summary     = %q{Tickemaster provider for Bugshelf.}
  s.description = %q{A tickemaster provider to make Bugshelf api usable with ticketmaster.}
  
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]

  s.rubyforge_project = "ticketmaster-bugshelf"
  
  s.add_runtime_dependency(%q<ticketmaster>, [">= 0.6.6"])

  s.files = [
    "README.md",
    "Rakefile",
    "lib/bugshelf/bugshelf-api.rb",
    "lib/provider/bugshelf.rb",
    "lib/provider/project.rb",
    "lib/provider/ticket.rb",
    "lib/ticketmaster-bugshelf.rb"
  ]
  s.test_files    = []
  s.executables   = []
  s.require_paths = ["lib"]
end
