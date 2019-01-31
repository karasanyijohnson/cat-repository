class CreateStudentApps < ActiveRecord::Migration[5.1]
  def change
    create_table :student_apps do |t|
      t.string :firstname
      t.string :lastname
      t.string :category

      t.timestamps
    end
  end
end
