class TailorsController < ApplicationController
  def index
    @tailors = Tailor.all
  end

  def new
    @tailor = tailor.new(tailor_params)
  end
end
