class User < ApplicationRecord
  validates :email, presence: true
  
  has_one :profile, dependent: :destroy
  has_many :posts
  has_and_belongs_to_many :interests

  def name
    # concatenate first name and last name
    "#{first_name} #{last_name}"
  end
end
