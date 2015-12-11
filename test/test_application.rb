# rubyhabit/test/test_application.rb
require_relative 'test_helper'

class TestApp < Rubyhabit::Application
end

class RubyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"

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