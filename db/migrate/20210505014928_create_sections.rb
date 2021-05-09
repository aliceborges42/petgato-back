class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :number_section
      t.integer :max_capacity
      t.integer :quantity

      t.timestamps
    end
  end
end
