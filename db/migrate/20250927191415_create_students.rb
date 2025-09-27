class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.date :date_of_birth
      t.text :address
      t.string :emergency_contact

      t.timestamps
    end
  end
end
