class BooksController < ApplicationController
  def index
    @books = Book.order(:Title)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)

    if @book.save
      redirect_to(books_path)
    else
      redirect_to(new_book_path)
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      redirect_to(books_path)
    else
      redirect_to(edit_book_path(:id => @book.id))
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to(books_path)
  end

end

private
def book_params
  params.require(:book).permit(:Title, :Author, :ISBN)
end

