class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    if flash[:author_attributes]
      @author = Author.new(flash[:author_attributes])
    else
      @author = Author.new
    end
  end

  def create
    @author = Author.new(author_params)

    if @author.valid?
      @author.save
      redirect_to @author
    else
      flash[:errors] = @author.errors.full_messages
      flash[:author_attributes] = @author.attributes
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
