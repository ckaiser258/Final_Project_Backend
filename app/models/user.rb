class User < ApplicationRecord
    has_secure_password

    has_many :teams
    has_many :athletes, through: :teams

    validates :first_name, :last_name, :email, :username, :password, presence: { message: "must be given" }

    validates :first_name, length: { minimum: 2 }
    validates :last_name, length: { minimum: 2 }
    validates :username, length: { minimum: 2 }
    validates :password, length: { in: 5..20 }

    validates :email, uniqueness: { message: "is taken" }
    validates :username, uniqueness: { message: "is taken" }


    # figure out how to implement below (might be able to do it right away, just don't want to cause any bugs yet. if it doesn't work, try making some users in console with email_confirmation and password_confirmation)

    # validates :email, confirmation: true
    # validates :password, confirmation: true
    # validates :email_confirmation, presence: true
    # validates :password_confirmation, presence: true
end
