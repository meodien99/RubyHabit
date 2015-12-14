# best_quotes/app/controllers/quotes_controller.rb

class QuotesController < Rubyhabit::Controller
  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def a_quote
    render :a_quote, :noun => "???"
  end

  def exception
    raise "It's a bad one !"
  end

  def quote_1
    quote_1 = FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def new_quote
    attrs = {
        "submitter" => 'web user',
        "quote" => 'A picture is worth a thousand pixels',
        "attribution" => 'Me'
    }
    m = FileModel.create attrs

    render :quote, :obj => m
  end
end