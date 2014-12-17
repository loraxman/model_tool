# myapp.rb
require "bundler/setup"
require 'sinatra'
require 'grape'
require 'grape-entity'
require './entity.rb'
#
get '/' do
   'Hello world!'
end

configure do
  @@tables = []
  e = MetaData::Entity.new
  e.name = 'table1'
  @@tables << e
  e = MetaData::Entity.new
  e.name = 'table2'
  @@tables << e
end
#
#
class API < Grape::API
   desc "Return list of hussars"
   format :json
    get :tabs do
        present @@tables, with: MetaData::EntityAPI
    end
    get :hello2 do
          { hello: params[:name] }
            end
    get :hello do
          { hello: "world" }
            end
end



