class MentorsController < Devise::RegistrationsController
  protect_from_forgery prepend: true
  before_action :authenticate_mentor!, except: %i[results root]

  def index
    # @mentors = Mentor.confirmed.all
    @mentors = Mentor.all
  end

  def results
    tags = params[:tags][:ids]
    @mentors = Mentor.joins(:tags).where(tags: { id: tags }).distinct
    redirect_to_index({notice: 'There were no mentors matching your options'}) if @mentors.empty? || tags.empty?
  end

  def show
    @mentor = find_by_uuid
  end

  def edit
    conditional_action do
      @mentor = find_by_uuid
    end
  end

  def update
    conditional_action do
      mentor = find_by_uuid
      remove_blank_passwords
      mentor.update!(mentor_params)
      redirect_to mentor_path(mentor.username)
    end
  end

  def delete
    conditional_action do
      mentor = find_by_uuid
      mentor.delete
    end
  end

  def root; end

  private
  def find_by_uuid
    Mentor.find_by_uuid(params[:uuid])
  end

  def mentor_params
    params.require(:mentor).permit(:username, :password, :password_confirmation, :booking_url, :email, :job_role, tag_ids: [])
  end

  def remove_blank_passwords
    no_passwords = params.dig(:mentor, :password).blank? && params.dig(:mentor, :password_confirmation).blank?
    return unless no_passwords

    params[:mentor].delete(:password)
    params[:mentor].delete(:password_confirmation)
  end

  def mentor_verification
    mentor_signed_in? && (current_mentor == find_by_uuid)
  end

  def conditional_action
    if mentor_verification
      yield
    else
      redirect_to_index
    end
  end

  def redirect_to_index(options = {})
    redirect_to mentors_path, options
  end

end

