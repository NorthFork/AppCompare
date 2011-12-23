class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :auth_token
      t.boolean :is_admin
      t.datetime :deleted_at

      t.timestamps
    end
  end
end