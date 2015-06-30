# Load the Rails application.
require 'contentful'
require File.expand_path('../application', __FILE__)
CLIENT = Contentful::Client.new(
  access_token: '846bd77d1da6e623460444c57c7b0846f8ea57df7ab6c1abb2533d76ba87e2ac',
  space: 'qtz4mu7wl0lv'
)
# Initialize the Rails application.
Rails.application.initialize!
