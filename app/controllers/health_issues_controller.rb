class HealthIssuesController < ApplicationController
  def new
    @health_issue=HealthIssue.new
  end
  def create
    @health_issue=HealthIssue.new(health_params)
    @health_issue.save
    redirect_to root_path
  end
  private
  def health_params
    params.require(:health_issue).permit(:name)
  end
end
