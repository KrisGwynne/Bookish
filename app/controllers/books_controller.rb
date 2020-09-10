class BooksController < ApplicationController
  def index
    @books = Book.order(:Title)
  end

  def show
    @book = Book.find(params[:id])
  end
end
