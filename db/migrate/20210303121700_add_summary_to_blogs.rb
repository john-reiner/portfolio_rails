class AddSummaryToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :summary, :text
  end
end
