class CreateConsultations < ActiveRecord::Migration[5.1]
  def change
    create_table :consultations do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.timestamps
    end
  end
end

# class AddAgeToPatients < ActiveRecord::Migration[5.1]
#   def change
#     add_column :patients, :intern_id, :integer, default: false, null: false
#   end
# end
