class CreateExperienceTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :experience_technologies do |t|
      t.references :experience, null: false, foreign_key: true
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
