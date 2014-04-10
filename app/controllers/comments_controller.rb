class CommentsController < ApplicationController

def create
    @book = Book.find params[:book_id]
	@comments = Comment.order("created_at DESC")
    @comment = @book.comments.create params[:comment]
	@comment.customer_id = @current_customer.id
	@comment.save

	respond_to do |format|
		format.html { redirect_to @book }
    	end
	end

end