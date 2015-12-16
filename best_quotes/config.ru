# best_quotes/config.ru
require './config/application'

#run BestQuotes::Application.new

map "/" do
  run QuotesController.action(:index)
end

run BestQuotes::Application.new

#run proc {
#	[200, {'Content-Type'=> 'text/html'},
#  	 ['Hello World']
#	]
#}
