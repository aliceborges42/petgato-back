class CreateVoluntaries < ActiveRecord::Migration[6.0]
  def change
    create_table :voluntaries, {:id => false} do |t|
      t.string :name
      t.string :email
      t.string :cpf, :limit=>11
      t.string :rg
      t.string :genero

      t.timestamps
    end
    execute "ALTER TABLE voluntaries ADD PRIMARY KEY (cpf);"
  end
end
