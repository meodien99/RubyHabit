# best_quotes/app/controllers/quotes_controller.rb

class QuotesController < Rubyhabit::Controller
  def a_quote
    render :a_quote, :noun => "???"
  end

  def exception
    raise "It's a bad one !"
  end
end