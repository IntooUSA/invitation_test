class Invitation < ApplicationRecord
    #regex format is one i've gotten from the internet and used on previous projects
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username
    validates :code, length: {is: 8}
end