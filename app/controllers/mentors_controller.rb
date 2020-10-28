class MentorsController < Devise::RegistrationsController

  def index
    @mentors = Mentor.confirmed.all
  end

  def results
    tags = params[:tags][:ids]

    @mentors = Mentor.joins(:tags).where(tags: {id: tags}).distinct

    redirect_to mentors_path, notice: 'There were no mentors matching your options' if @mentors.empty? || tags.empty?
  end

  def show
    @mentor = find_by_username
  end

  def edit
    @mentor = find_by_username
    render 'mentors/registrations/edit'
  end

  def update
    mentor = find_by_username
    remove_blank_passwords
    # binding.pry
    mentor.update!(mentor_params)
  end

  # Delete

  private
  def find_by_username
    Mentor.find_by_username(params[:username])
  end

  def mentor_params
    params.require(:mentor).permit(:username, :password, :password_confirmation, :email, tag_ids: [])
  end

  def remove_blank_passwords
    if params.dig(:mentor, :password).blank? && params.dig(:mentor, :password_confirmation).blank?
      params[:mentor].delete(:password)
      params[:mentor].delete(:password_confirmation)
    end
  end
end

