class CreateEducationTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :education_technologies do |t|
      t.references :education, null: false, foreign_key: true
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
