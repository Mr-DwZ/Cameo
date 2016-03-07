class CreateExaminees < ActiveRecord::Migration
  def change
    create_table :examinees do |t|
      t.string   :username
      t.string   :password
      t.string   :name
      t.integer  :age
      t.string   :email
      t.integer  :gender

      t.timestamps null: false
    end
  end
end
