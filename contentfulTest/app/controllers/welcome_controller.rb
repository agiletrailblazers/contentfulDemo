require 'contentful'
class WelcomeController < ApplicationController
  def index
  content = CLIENT.entry('55yDKoCOWQQ6em0YsUiEMO')
  @title = content.fields[:firstParagraph]
  @image = content.fields[:firstImage].first.resolve.image_url
  @secondary = content.fields[:firstNav]
  end
end
