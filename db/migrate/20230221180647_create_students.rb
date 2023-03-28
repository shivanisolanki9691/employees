class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :personal_email
      t.string :state
      t.string :country
      t.string :pincode
      t.string :address_line_1
      t.string :address_line_2

      t.timestamps
    end
  end
end