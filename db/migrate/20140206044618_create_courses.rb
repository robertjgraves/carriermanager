class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.decimal :miles
      t.references :origin, index: true
      t.references :destination, index: true

      t.timestamps
    end
  end
end
