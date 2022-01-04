class CreatePostalCards < ActiveRecord::Migration[6.1]
  def change
    create_table :postal_cards do |t|
      t.string :country
      t.string :department
      t.string :city
      t.integer :year
      t.string :editor
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
