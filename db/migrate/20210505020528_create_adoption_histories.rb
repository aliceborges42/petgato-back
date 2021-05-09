class CreateAdoptionHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :adoption_histories do |t|
      t.date :date
      t.string :status
      t.text :description
      t.text :animal_condition

      t.timestamps
    end
  end
end
