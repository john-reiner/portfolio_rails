class ChangeDescriptionToBeTextInEducation < ActiveRecord::Migration[6.0]
  def change
    change_column :educations, :description, :text
  end
end
