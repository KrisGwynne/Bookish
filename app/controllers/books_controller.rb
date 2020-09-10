class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    redirect_to(books_index_path)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    redirect_to(books_index_path)
  end

end

private
def book_params
  params.require(:book).permit(:Title, :Author, :ISBN)
end

