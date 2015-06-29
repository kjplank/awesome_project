class CreateTheme2s < ActiveRecord::Migration
  def change
    create_table :theme2s do |t|
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
