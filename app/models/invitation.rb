class Invitation < ApplicationRecord
    #regex format is one i've gotten from the internet and used on previous projects
    validates :code, presence: true, length: {is: 8}
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP}, uniqueness: true
    validates :first_name, presence: true, format: {with: /[a-zA-Z]/}
    validates :last_name, presence: true, format: {with: /[a-zA-Z]/}
    validates :created_at, presence: true
end