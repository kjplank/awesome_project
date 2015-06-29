class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.boolean :admin
      t.string :email
      t.integer :user_votes

      t.timestamps

    end
  end
end
