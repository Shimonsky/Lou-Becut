class CreateOldPapers < ActiveRecord::Migration[6.1]
  def change
    create_table :old_papers do |t|
      t.string :genre
      t.string :year
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
