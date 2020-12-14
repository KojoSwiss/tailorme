class TailorsController < ApplicationController
  def index
    @tailors = Tailor.all
  end

  def new
    @tailor = tailor.new
  end

  def create
    @tailor = tailor.new(tailor_params)
    if tailor.save
      redirect_to tailor_path(@tailor)
    else
      render 'new'
    end
  end

  private

  def tailor_params
    params.require(:tailor).permit(:shop_name, :description, :review, :rating)
  end
end
