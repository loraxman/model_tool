# myapp.rb
require "bundler/setup"
require 'sinatra'
require 'grape'
require './entity.rb'
#
get '/' do
   'Hello world!'
end

configure do
  @@tables = []
  e = Entity.new
  e.name = 'table1'
  @@tables << e

end
#
#
class API < Grape::API
    get :tabs do
      { hello: @@tables[0].name  }
            end
    get :hello2 do
          { hello: params[:name] }
            end
    get :hello do
          { hello: "world" }
            end
end



