class AddWeeknumberToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :week_number, :integer, default: 1, null: false
  end
end
