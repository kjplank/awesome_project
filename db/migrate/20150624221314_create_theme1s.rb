class CreateTheme1s < ActiveRecord::Migration
  def change
    create_table :theme1s do |t|
      t.text :innovation
      t.text :reason
      t.string :url
      t.string :image
      t.string :video
      t.integer :innovation_votes
      t.integer :user_id

      t.timestamps

    end
  end
end
