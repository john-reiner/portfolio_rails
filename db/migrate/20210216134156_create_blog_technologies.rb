class CreateBlogTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_technologies do |t|
      t.references :blog, null: false, foreign_key: true
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
