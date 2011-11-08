require 'rubygems'
require 'bundler/setup'

# Google Analytics: UNCOMMENT IF DESIRED, THEN ADD YOUR OWN ACCOUNT INFO HERE!
#require 'rack/google-analytics'
#use Rack::GoogleAnalytics, :tracker => "YOUR GOOGLE ANALYTICS ACCOUNT ID HERE"


require './app'
run Sinatra::Application