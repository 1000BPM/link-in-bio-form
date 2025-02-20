class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end


  def add
    
    render ({ :template => "item_templates/form"})
  end
end
