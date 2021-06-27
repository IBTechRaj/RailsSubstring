class SubstringsController < ApplicationController
  def new
    @substring=Substring.new
  end

  def edit
  @subtring = Substring.find(params[:id])
end
#   def show
# @substring=Substring.find_by(:)
#   end

  def create
    @substring = Substring.new(substring_params)

    if  @substring.save
    redirect_to @substring
    else
    render 'new'
    end
  end

  def show
    @substring = Substring.find(params[:id])
  end
  def substring_params
params.require(:substring).permit(:str1, :str2)
  end
end
