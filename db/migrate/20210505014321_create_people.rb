class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people, {:id=>false} do |t|
      t.string :name
      t.string :email
      t.string :cpf, :limit=>11
      t.string :rg
      t.string :genero
      t.date :data_nasc

      t.timestamps
    end
    execute "ALTER TABLE people ADD PRIMARY KEY (cpf);"
  end
end
