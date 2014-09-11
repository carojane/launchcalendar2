class DropDayIdFromAssignments < ActiveRecord::Migration
  def up
    remove_column :assignments, :day_id
    change_column :assignments, :date, :date, null: false
  end

  def down
    add_column :assignments, :day_id, :string
    change_column :assignments, :date, :date
  end
end
