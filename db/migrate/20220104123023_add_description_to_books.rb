class AddDescriptionToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :description, :string
    add_column :books, :AddImageUrlToBooks, :string
    add_column :books, :image_url, :string
  end
end
