class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @lists = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
  end



  private

  def List_params
    params.require(:list).permit(:name)
  end

end
