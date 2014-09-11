class AddExtraToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :extra, :boolean, default: false
  end
end
