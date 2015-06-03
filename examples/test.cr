require "../src/all"

class TestController < Controller

	def index
		html "Hello world!"
  end

  def actions
    add :index
  end
end


App.settings.configure do |conf|
  conf.environment "development" 
end

App.routes.draw do
  get "/user/:id", "test#index"
  register TestController
end

app = App.new

app.serve
