class CreateUserRolls < ActiveRecord::Migration[7.0]
  def change
    create_table :user_rolls do |t|
      t.string :role
      t.string :accesstoken
      t.boolean :status
      t.datetime :created_on
      t.string :email

      t.timestamps
    end
  end
end
