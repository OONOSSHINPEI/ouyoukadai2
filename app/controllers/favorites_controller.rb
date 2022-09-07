class FavoritesController < ApplicationController
 def create
  @book_favorite = Favorite.new(user_id: current_user.id, book_id: params[:book_id])
  @book_favorite.save
 
  redirect_to request.referer
 end

 def destroy
  book = Book.find(params[:book_id])
  favorite = current_user.favorites.find_by(book_id: book.id)
 
  favorite.destroy
  redirect_to request.referer
 end
    
 
end
