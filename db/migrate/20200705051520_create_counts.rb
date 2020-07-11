class CreateCounts < ActiveRecord::Migration[5.2]
  def change
    create_table :counts do |t|
      t.integer :user_id
      t.integer :count1, null: false, default: 0
      t.integer :count2, null: false, default: 0
      t.integer :count3, null: false, default: 0
      t.integer :count4, null: false, default: 0
      t.integer :count5, null: false, default: 0

      t.timestamps
    end
  end
end
