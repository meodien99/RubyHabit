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

      if(env['PATH_INFO'] == '/')
        return [200, {'Content-Type'=>'text/html'}, ['Hello']]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)

      text = controller.send(act)


      [200, {'Content-Type'=> 'text/html'},
       [text]]
    end
  end
end
