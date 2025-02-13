class TailorsController < ApplicationController
  before_action :set_tailor, only:[:show, :edit, :update, :destroy]
  def index
    @tailors = Tailor.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @tailors.geocoded.map do |tailor|
      {
        lat: tailor.latitude,
        lng: tailor.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { tailor: tailor }),
        image_url: helpers.asset_url('logo.png')
      }
    end
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
    @comment = Comment.new
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
    params.require(:tailor).permit(:shop_name, :description, :review, :rating, :address, photos: [])
  end

  def set_tailor
    @tailor = Tailor.find(params[:id])
  end
end
