class AddColumnstoSettings < ActiveRecord::Migration
  def change
    remove_column :settings, :show_all_innovations, :boolean
    add_column :settings, :show_all_ideas, :boolean
  end
end
