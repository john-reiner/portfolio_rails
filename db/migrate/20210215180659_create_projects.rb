class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :image
      t.string :url
      t.string :github
      t.text :summary
      t.references :user, null: false, foreign_key: true
      t.boolean :deployed

      t.timestamps
    end
  end
end
