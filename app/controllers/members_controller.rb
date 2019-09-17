class MembersController < ApplicationController

  def new
    @page_title="Add Member"
    @member=Member.new
    @mem=Member.all
    @gender=Gender.new
    @title=Title.new
    @contact=Contact.new
    @health_issue=HealthIssue.all
    @hobby=Hobby.all
    @profession=Profession.new
  end
  def create
    @member=Member.new(member_params)
    @member.save
    # flash[:notice] = 'Member Added'

    redirect_to root_path
  end
  def index

  end
  def edit
    @member = Member.find(params[:id])
    @hobby=Hobby.all
    @mem=Member.all
    @health_issue=HealthIssue.all



  end
  def update
    @member = Member.find(params[:id])

    @member.update(member_params)

    flash[:notice] = 'Member Update'

    redirect_to member_path(@member.id)



  end

  def destroy
    @member = Member.find(params[:id])

    @member.destroy

    flash[:notice] = 'Member Removed'

    redirect_to root_path
  end

  def show
    @member=Member.find(params[:id])

  end

  private
  def member_params
    params.require(:member).permit(:first_name,:last_name,:dob ,:city ,:address ,:gender ,:title ,:hobbies ,:health_issues ,:contacts ,:profession,:married_to)
  end

end
