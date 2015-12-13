# best_quotes/config/application.rb

require "rubyhabit"
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
#require 'quotes_controller'
# ----- NO MORE REQUIRED HERE -----------

module BestQuotes
	class Application < Rubyhabit::Application
	end
end
