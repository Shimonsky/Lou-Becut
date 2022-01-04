class CreateOldNewsPapers < ActiveRecord::Migration[6.1]
  def change
    create_table :old_new_papers do |t|
      t.string :name
      t.integer :year
      t.string :date
      t.string :genre
      t.string :image_url

      t.timestamps
    end
  end
end
