# Requires
require 'rails/generators'
require 'rails/generators/base'

module JsPercolator
  module Generators
    class PluginGenerator < ::Rails::Generators::Base
      argument :plugin_name, :type => :string, :default => "plugin"

      desc "Creates an UMD jQuery plugin coffeescript file and scaffolds for testing."

      def self.source_root
        @source_root ||= File.join(File.dirname(__FILE__), 'templates')
      end

      # all public methods in here will be run in order
      def create_plugin
        template "plugin.coffee", "app/assets/javascripts/#{folder_path}tbg-#{file_name.underscore}.js.coffee"
      end

      def create_js_test
        template "js_spec.coffee", "spec/javascripts/plugin/tbg-#{file_name.underscore}_spec.js.coffee"
        template "js_fixture.html.haml", "spec/javascripts/fixtures/plugin/tbg-#{file_name.underscore}_fixture.html.haml"
      end
      private

      def file_name
        plugin_name.split('/').last
      end

      def folder_path
        folders = plugin_name.split('/')
        folders.pop
        "#{folders.join('/')}/"
      end

    end
  end
end



