class AddImageToLinks < ActiveRecord::Migration[6.0]
  def change
    add_column :links, :image, :string
  end
end
