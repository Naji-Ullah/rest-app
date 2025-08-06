class User < ApplicationRecord
  before_create :ensure_api_token

  # Include default devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  private

  def ensure_api_token
    self.api_token ||= generate_api_token
  end

  def generate_api_token
    loop do
      token = SecureRandom.hex(20)
      break token unless User.exists?(api_token: token)
    end
  end
end
