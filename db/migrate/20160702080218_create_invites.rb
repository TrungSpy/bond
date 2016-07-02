class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.float :lat
      t.float :lon
      t.integer :limit
      t.integer :category, default: 0, null: false, limit: 1
      t.integer :status, default: 0, null: false, limit: 1

      t.timestamps null: false
    end
  end
end
