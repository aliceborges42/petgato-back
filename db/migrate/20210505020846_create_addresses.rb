class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :cep
      t.string :city
      t.string :state
      t.string :country
      t.string :district
      t.string :steet

      t.timestamps
    end
  end
end
