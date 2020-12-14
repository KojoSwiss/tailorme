class TailorsController < ApplicationController
  def index
    @tailors = Tailor.all
  end

  def new
    @tailor = Tailor.new
  end

  def create
    @tailor = Tailor.new(tailor_params)
    if tailor.save
      redirect_to tailor_path(@tailor)
    else
      render 'new'
    end
  end

  def show
    @tailor = Tailor.find(params[:id])
  end

  private

  def tailor_params
    params.require(:tailor).permit(:shop_name, :description, :review, :rating, :city)
  end
end
