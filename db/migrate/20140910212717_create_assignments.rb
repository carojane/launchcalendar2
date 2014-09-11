class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name, null: false
      t.string :url
      t.integer :day_id, null: false
    end
  end
end
