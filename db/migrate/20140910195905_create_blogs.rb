class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :week_id, null: false
      t.string :url
    end
  end
end
