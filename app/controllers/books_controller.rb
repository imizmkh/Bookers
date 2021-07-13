class BooksController < ApplicationController
  def index
    @books = Book.all
    @books = Book.new
  end

  def show
    @books = Book.find(params[:id])
  end

  def new
  end

  def create
    book = Book.new(book_params)
    book.save
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:book_title, :book_body)
  end

end
