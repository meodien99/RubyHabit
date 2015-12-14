# rubyhabit/lib/rubyhabit/controller.rb

require "erubis"
require "rubyhabit/file_model"
require "rack/request"
require "uri"

module Rubyhabit
  class Controller
    include Rubyhabit::Model

    def initialize(env)
      @env = env
    end

    def env
      @env
    end

    def request
      # @request ||= Rack::Request.new(@env)
      # @request ||= Rack::Utils.parse_query URI(@env['REQUEST_URI']).query
      @request ||= URI(@env['REQUEST_URI'])
    end

    def params
      # key, value = request.query.split("&").map { |t| t.split("=")}
      Hash[request.query.split("&").map { |t| t.split("=")}]
    end

    def render(view_name, locals = {})
      filename = File.join "app", "views", controller_name, "#{view_name}.html.erb"
      template = File.read filename
      eruby = Erubis::Eruby.new(template)
      eruby.result locals.merge(:env => env)
    end

    def controller_name
      klass = self.class
      klass = klass.to_s.gsub(/Controller$/, "")
      Rubyhabit.to_underscore klass
    end
  end
end