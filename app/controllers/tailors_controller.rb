class TailorsController < ApplicationController
  before_action :set_tailor, only:[:show, :edit, :update, :destroy]
  def index
    @tailors = Tailor.all
  end

  def new
    @tailor = Tailor.new
  end

  def create
    @tailor = Tailor.new(tailor_params)
    if @tailor.save
      redirect_to tailor_path(@tailor)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tailor.update(tailor_params)
      redirect_to tailor_path(@tailor)
    else
      render 'edit'
    end
  end

  def destroy
    @tailor.destroy
    redirect_to tailors_path
  end

  private

  def tailor_params
    params.require(:tailor).permit(:shop_name, :description, :review, :rating, :city, :photo)
  end

  def set_tailor
    @tailor = Tailor.find(params[:id])
  end
end
