class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :name, null: false
      t.integer :week_id, null: false
    end
  end
end
