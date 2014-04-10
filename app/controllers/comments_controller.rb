class CommentsController < ApplicationController

def create
    @book = Book.find params[:book_id]
    @comment = @book.comments.create params[:comment]
	respond_to do |format|
		format.html { redirect_to @book }
    	end
end

end