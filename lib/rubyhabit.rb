require "rubyhabit/version"

module Rubyhabit
	class Application
		def call(env)
			[200, {'Content-Type'=> 'text/html'},
			["Hello from Ruby on Ruby Habit!!"]]
		end
	end
end
