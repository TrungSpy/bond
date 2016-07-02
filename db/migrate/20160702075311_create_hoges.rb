class CreateHoges < ActiveRecord::Migration
  def change
    create_table :hoges do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
