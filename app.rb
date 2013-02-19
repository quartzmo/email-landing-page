require 'rubygems'
require 'sinatra'
require 'hominid' # MailChimp

configure do

  # MailChimp configuration: ADD YOUR OWN ACCOUNT INFO HERE!
  set :mailchimp_api_key, "YOUR MAILCHIMP API KEY HERE"
  set :mailchimp_list_name, "YOUR MAILCHIMP LIST NAME HERE"

end

get '/' do
  erb :index
end

post '/signup' do
  email = params[:email]
  unless email.nil? || email.strip.empty?

    mailchimp = Hominid::API.new(settings.mailchimp_api_key)
    list_id = mailchimp.find_list_id_by_name(settings.mailchimp_list_name)
    raise "Unable to retrieve list id from MailChimp API." unless list_id

    # http://apidocs.mailchimp.com/api/rtfm/listsubscribe.func.php
    # double_optin, update_existing, replace_interests, send_welcome are all true by default (change as desired)
    mailchimp.list_subscribe(list_id, email, {}, 'html', true, true, true, true)

  end
  "Success."
end