class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :major
      t.belongs_to :instructor, null: false, foreign_key: true
      t.integer :age

      t.timestamps
    end
  end
end
