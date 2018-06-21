class CreateStudentProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :student_profiles do |t|
      t.string :firstname
      t.string :lastname
      t.date :date_of_birth
      t.integer :gender
      t.integer :ethnicity
      t.belongs_to :user, index: true
    end
  end
end
