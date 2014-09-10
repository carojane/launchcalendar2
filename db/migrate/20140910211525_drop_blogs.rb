class DropBlogs < ActiveRecord::Migration
  def up
    drop_table :blogs
  end

  def down
    create_table :blogs do |t|
      t.integer :week_id, null: false
      t.string :url
    end
  end
end
