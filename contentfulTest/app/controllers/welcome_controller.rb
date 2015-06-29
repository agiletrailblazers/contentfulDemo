require 'contentful'
class WelcomeController < ApplicationController
  def index
  client = Contentful::Client.new(
    access_token: '846bd77d1da6e623460444c57c7b0846f8ea57df7ab6c1abb2533d76ba87e2ac',
    space: 'qtz4mu7wl0lv'
  )
  puts "*" * 50
  content = client.entry('55yDKoCOWQQ6em0YsUiEMO')
  @title = content.fields[:firstParagraph]
  @image = content.fields[:firstImage].first.resolve.image_url
  @secondary = content.fields[:firstNav]
  puts "*" * 50
  end
end
