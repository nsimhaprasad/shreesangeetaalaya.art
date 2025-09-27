class CreateCourses < ActiveRecord::Migration[8.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :duration
      t.decimal :fee
      t.string :genre
      t.string :instrument
      t.string :age_group
      t.boolean :active

      t.timestamps
    end
  end
end
