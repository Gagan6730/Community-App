class HomeController < ApplicationController
  def homepage
    @page_title="Members"
    @member=Member.all
  end
end
