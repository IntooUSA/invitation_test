class CreateInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations do |t|
      t.string :code
      t.string :first_name
      t.string :last_name
      t.string :email
      t.datetime :activated_at

      t.timestamps
    end

    add_index :invitations, :email, unique: true
  end
end
