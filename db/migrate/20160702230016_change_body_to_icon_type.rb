class ChangeBodyToIconType < ActiveRecord::Migration
  def change
    add_column :messages, :icon_type, :integer
    remove_column :messages, :body
  end
end
