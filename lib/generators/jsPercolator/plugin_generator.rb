# Requires
require 'rails/generators'

module JsPercolator
  class PluginGenerator < Rails::Generators::Base

    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    # all public methods in here will be run in order
    def create_plugin
      template "plugin.coffee", "app/assets/javascripts/plugin.js.coffee"
    end


  end
end



