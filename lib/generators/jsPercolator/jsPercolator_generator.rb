# Requires
require 'rails/generators'

class JsPercolatorGenerator < Rails::Generators::Base

  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  # all public methods in here will be run in order
  def add_my_initializer
    # template "initializer.rb", "config/initializers/my_gem_initializer.rb"
    puts "hello, world!"
  end

end



