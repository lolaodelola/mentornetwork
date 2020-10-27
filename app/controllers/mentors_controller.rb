class MentorsController < ApplicationController

  def index
    @mentors = Mentor.confirmed.all
  end

  def show
    find_by_username
  end

  def edit
    find_by_username
  end

  private
  def find_by_username
    @mentor = Mentor.find_by_username(params[:username])
  end
end
