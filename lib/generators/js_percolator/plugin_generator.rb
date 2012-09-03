# Requires
require 'rails/generators'
require 'rails/generators/base'

module JsPercolator
  module Generators
    class PluginGenerator < ::Rails::Generators::Base

      desc "Create Plugin"

      def self.source_root
        @source_root ||= File.join(File.dirname(__FILE__), 'templates')
      end

      # all public methods in here will be run in order
      def create_plugin
        template "plugin.coffee", "app/assets/javascripts/plugin.js.coffee"
      end

    end
  end
end



