class CreateExaminers < ActiveRecord::Migration
  def change
    create_table :examiners do |t|
      t.string :username
      t.string :password
      t.string :name
      t.integer :age
      t.integer :gender
      t.string  :email

      t.timestamps null: false
    end
  end
end
