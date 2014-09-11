class DropNameFromDays < ActiveRecord::Migration
  def up
    remove_column :days, :name
    remove_column :days, :week_id
  end

  def down
    add_column :days, :name, :string
    add_column :days, :week_id, :integer
  end
end
