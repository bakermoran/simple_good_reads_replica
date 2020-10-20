class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :publisher
      t.integer :year_published
      t.references :author
      t.timestamps
    end
  end
end
