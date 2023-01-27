class Invitation < ApplicationRecord
    
    validates :code, :first_name, :last_name, :email, :activated_at, presence: true
    validates :email, uniqueness: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :code, length: { minimum: 8, maximum: 8 }           


    def self.import_from_csv
        invitations = CSV.foreach('invitation_test.csv', headers: true).map do |row|                                                                 
        { 
          code: row['code'],
          first_name: row['first_name'],
          last_name: row['last_name'],
          email: row['email'],
          activated_at: row["concat('2022-01-2',FLOOR( RAND() * (9-2) + 2))"]
        }
        end
        Invitation.insert_all(invitations)
      end
end
