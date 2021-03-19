class CreateBirthdays < ActiveRecord::Migration[6.0]
  def change
    create_table :birthdays do |t|
      t.date :date
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
