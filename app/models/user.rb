class User < ActiveRecord::Base
	has_many :badges
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  def has_badge?(badge)
  	@riddle = Riddle.find_by(badge: badge)
  	self.badges.pluck(:riddle_id).include?(@riddle.id)
  end
end
