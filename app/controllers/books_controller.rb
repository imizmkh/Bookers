class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = 'Book was successfully created.'
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
