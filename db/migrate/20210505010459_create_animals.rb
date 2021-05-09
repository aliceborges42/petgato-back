class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :nome
      t.string :raca
      t.date :data_chegada
      t.boolean :adotado

      t.timestamps
    end
  end
end
