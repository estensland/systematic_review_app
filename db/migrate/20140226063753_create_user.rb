class CreateUser < ActiveRecord::Migration
  def change
      create_table :posts do |t|
      t.string :user_name
      t.string :password_digest
      t.timestamps
    end
  end
end
