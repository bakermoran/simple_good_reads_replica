class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :review_text
      t.integer :rating
      t.references :book
      t.references :user
      t.timestamps
    end
  end
end
