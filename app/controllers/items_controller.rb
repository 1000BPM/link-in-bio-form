class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end


  def add
    
    render({ :template => "item_templates/form"})
  end

  def post_new

  url_add = params.fetch("link_url") 
  desc_add = params.fetch("link_desc")
  img_add = params.fetch("image_url")

  i = Item.new

  i.link_url = url_add
  i.link_description = desc_add
  i.thumbnail_url = img_add
  i.save

  redirect_to("/")
  end
end
