class ProfessionsController < ApplicationController
  def new
    @profession=Profession.new
  end
  def create
    @profession = Profession.new(prof_params)
    @profession.save
    redirect_to root_path
  end
  private
  def prof_params
    params.require(:profession).permit(:name)
  end
end
