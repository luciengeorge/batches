class CreateInterns < ActiveRecord::Migration[5.1]
  def change
    create_table :interns do |t|
      t.string :first_name
      t.string :last_name
      t.references :doctor, foreign_key: true
      # t.integer :doctor_id, index: true => old way

      t.timestamps null: false
    end
  end
end
