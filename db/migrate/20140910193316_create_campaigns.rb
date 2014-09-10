class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name, null: false
      t.string :start_date, null: false
      t.string :end_date, null: false
    end
  end
end
