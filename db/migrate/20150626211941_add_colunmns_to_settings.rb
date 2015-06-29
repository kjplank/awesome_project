class AddColunmnsToSettings < ActiveRecord::Migration
  def change

add_column :settings, :theme_1, :string
add_column :settings, :theme_2, :string
add_column :settings, :theme_3, :string
add_column :settings, :theme_4, :string

  end
end
