class AddTechBioToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :tech_bio, :text
  end
end
