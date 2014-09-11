class AddCampaignsToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :campaign_id, :integer
  end
end
