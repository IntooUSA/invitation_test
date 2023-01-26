class Invitation < ApplicationRecord
    EMAIL_REGEX = ^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$ 

    validates code
    validates :first_name, length: {minimum: 8, maximum: 8}
    validates :last_name 
    validates :email
    validates_format_of :email, with: EMAIL_REGEX 
    validates_uniqueness_of :email, :uniqueness => true
    validates :activated_at 
end

