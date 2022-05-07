class User < ApplicationRecord
  validates :email, presence: true
  
  has_one :profile, dependent: :destroy
  has_many :posts

  def name
    # concatenate first name and last name
    "#{first_name} #{last_name}"
  end
end
