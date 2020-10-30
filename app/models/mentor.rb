class Mentor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates_presence_of :booking_url
  has_many :mentor_tags
  has_many :tags, through: :mentor_tags
  scope :confirmed, -> { where.not(confirmation_sent_at: nil) }
  before_create :set_uuid

  private

  def set_uuid
    self.uuid = SecureRandom.uuid
  end
end
