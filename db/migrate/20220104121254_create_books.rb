class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :editor
      t.integer :year
      t.integer :pages
      t.string :genre
      t.string :format

      t.timestamps
    end
  end
end
