class CreateExperienceSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :experience_skills do |t|
      t.references :experience, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
