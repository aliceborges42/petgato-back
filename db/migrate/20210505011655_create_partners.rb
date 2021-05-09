class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners, {:id=>false} do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    execute "ALTER TABLE partners ADD PRIMARY KEY (email);"
  end
end
