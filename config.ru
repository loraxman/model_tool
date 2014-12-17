# myapp.rb
require './appmain.rb'
require "bundler/setup"
require 'sinatra'
require 'grape'
#

use Rack::Session::Cookie
run  Rack::Cascade.new [API]


