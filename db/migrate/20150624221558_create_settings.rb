class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.boolean :show_votes
      t.boolean :show_all_innovations

      t.timestamps

    end
  end
end
