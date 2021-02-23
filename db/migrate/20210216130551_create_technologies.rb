class CreateTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.string :name
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
