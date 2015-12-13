# rubyhabit/test/test_application.rb
require_relative 'test_helper'

class TestApp < Rubyhabit::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class TestController < Rubyhabit::Controller
  def index
    "Hello!" #Not rendering a view
  end
end

class RubyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/example/route"

    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end

  def test_post
    get "/my/url"

    assert last_response.ok?

    body = last_response
    puts body
  end
end