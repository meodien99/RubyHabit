require "rubyhabit/version"
require 'rubyhabit/array'
require 'rubyhabit/routing'
require 'rubyhabit/util'
require 'rubyhabit/dependencies'
require 'rubyhabit/controller'

module Rubyhabit
  class Application
    def call(env)
      if(env['PATH_INFO'] == '/favicon.ico')
        return [404, {'Content-Type'=>'text/html'}, []]
      end

      # klass, act = get_controller_and_action(env)
      # rack_app = klass.action(act)
      # rack_app.call(env)

      #klass, act = get_controller_and_action(env)
      rack_app = get_rack_app(env)
      rack_app.call(env)

      # text = controller.send(act)

      # if controller.get_response
      #   st, hd, rs = controller.get_response.to_a
      #   [st, hd, [rs].flatten]
      # else
      #   [200, {'Content-Type'=> 'text/html'}, [text]]
      # end
    end
  end
end
