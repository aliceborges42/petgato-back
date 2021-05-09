class CreateFarmacinhas < ActiveRecord::Migration[6.0]
  def change
    create_table :farmacinhas do |t|
      t.string :name
      t.integer :quantity
      t.string :brand
      t.date :validade

      t.timestamps
    end
  end
end
