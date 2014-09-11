class AddDateToDays < ActiveRecord::Migration
  def change
    add_column :days, :date, :date, null: false, default: '2014-08-11'
  end
end
