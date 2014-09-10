class AddBlogToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :blog_name, :string
    add_column :weeks, :blog_url, :string
    add_column :weeks, :systemscheck, :string
  end
end
