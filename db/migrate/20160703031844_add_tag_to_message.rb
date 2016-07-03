class AddTagToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :tag, :integer, default: 0, null: false, limit: 1
  end
end
