class ListsController < ApplicationController

  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to list_path(list)
  end
  
  def index
    #インスタンス変数
    @lists = List.all
  end
  
  def show
    @list = List.find(params[:id])
  end
  
  def edit
  end
  
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
