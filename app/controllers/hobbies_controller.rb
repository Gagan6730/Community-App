class HobbiesController < ApplicationController
  def new
    @hobby=Hobby.new
  end
  def create
    @hobby=Hobby.new(hobby_params)
    @hobby.save
    redirect_to root_path

  end
  private
  def hobby_params
    params.require(:hobby).permit(:name)
  end
end
