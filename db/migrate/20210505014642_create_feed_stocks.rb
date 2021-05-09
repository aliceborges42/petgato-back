class CreateFeedStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :feed_stocks do |t|
      t.string :name
      t.integer :quantity
      t.string :brand
      t.decimal :kg

      t.timestamps
    end
  end
end
