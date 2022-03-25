class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.create
    @movies = Movie.all
  end

  def create
    @bookmark = Bookmark.new(review_params)
    @bookmark.list = List.find(params[:list_id].to_i)
    @bookmark.movie = Movie.find(params[:movie_id].to_i)
    redirect_to lists_path if @bookmark.save!
  end

  def destroy
    @bookmarks = Bookmark.where(list_id: params[:list_id].to_i)
    @bookmarks.each do |bookmark|
      bookmark.destroy
    end
  end

  private

  def review_params
    params.require(:bookmark).permit(:comment)
  end
end
