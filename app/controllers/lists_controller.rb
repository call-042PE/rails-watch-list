class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.create
  end

  def create
    @list = List.new(review_params)
    if @list.save
      redirect_to list_path(@list)
    end
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = Bookmark.where(list_id: params[:id])
  end

  private

  def review_params
    params.require(:list).permit(:name)
  end
end
