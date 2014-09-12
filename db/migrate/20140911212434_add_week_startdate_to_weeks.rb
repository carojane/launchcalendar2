class AddWeekStartdateToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :week_start, :date, default: '2014-08-11', null: false
  end
end
