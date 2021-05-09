class CreateMedicalRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_records do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.text :medical_procedure
      t.text :remedy_description
      t.text :disease
      t.string :remedy

      t.timestamps
    end
  end
end
