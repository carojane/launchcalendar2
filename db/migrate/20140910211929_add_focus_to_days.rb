class AddFocusToDays < ActiveRecord::Migration
  def change
    add_column :days, :focus, :string
    add_column :days, :campaign_id, :integer, null: false
  end
end
