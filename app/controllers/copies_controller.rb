class CopiesController < ApplicationController
  before_action :get_book

  def new
    # @book = Book.find(params[:book_id])
    @copy = @book.copies.build
  end

  def create
    @copy = @book.copies.create(copy_params)
    redirect_to(book_path(:id => params[:book_id]))
  end

  def edit
    @copy = Copy.find(params[:id])
  end

  def update
    @copy = Copy.find(params[:id])
    @copy.update_attributes(copy_params)
    redirect_to(book_path(:id => params[:book_id]))
  end

end

def get_book
  @book = Book.find(params[:book_id])
end

private
def copy_params
  params.require(:copy).permit(:borrower, :due_date)
end