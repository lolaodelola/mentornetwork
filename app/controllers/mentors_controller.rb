class MentorsController < ApplicationController

  def index
    @mentors = Mentor.confirmed.all
  end

  def results
    tags = params[:tags][:ids]

    @mentors = Mentor.joins(:tags).where(tags: {id: tags}).distinct

    redirect_to mentors_path, notice: 'There were no mentors matching your options' if @mentors.empty? || tags.empty?
  end

  def show
    # binding.pry
    find_by_username
  end
  #
  # def edit
  #   find_by_username
  # end

  private
  def find_by_username
    @mentor = Mentor.find_by_username(params[:username])
  end
end

