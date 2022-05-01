class User < ApplicationRecord
    validates :email, presence: true
    
    has_one :profile       dependent: :destroy
    has_many :posts


    def name
    end
end
