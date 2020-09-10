class CopiesController < ApplicationController
  before_action :get_book

  def new
    @copy = @book.copies.build
  end

  def create
    @copy = @book.copies.create(copy_params)

    if @copy.save
      redirect_to(book_path(:id => params[:book_id]))
    else
      redirect_to(new_book_copy_path(:book_id => @book.id))
    end

  end

  def edit
    print params[:id]
    @copy = Copy.find(params[:id])
  end

  def update
    @copy = Copy.find(params[:id])
    if @copy.update_attributes(copy_params)
      redirect_to(book_path(:id => params[:book_id]))
    else
      redirect_to(edit_book_copy_path(:book_id => @book.id))
    end
  end

  def destroy
    @copy = Copy.find(params[:id])
    @copy.destroy
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