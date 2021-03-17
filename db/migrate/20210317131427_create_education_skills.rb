class CreateEducationSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :education_skills do |t|
      t.references :education, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
