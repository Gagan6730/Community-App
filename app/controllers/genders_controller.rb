class GendersController < ApplicationController
  def new
    @gender=Gender.new
  end
  def create
    @gender=Gender.new(gender_params)
    @gender.save
    redirect_to root_path

  end
  private
  def gender_params
    params.require(:gender).permit(:name)
  end
end
