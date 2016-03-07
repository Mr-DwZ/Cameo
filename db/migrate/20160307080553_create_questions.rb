class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :properties
      t.integer :exam_id
      t.integer :examiner_id

      t.timestamps null: false
    end
    add_index :questions, :exam_id
    add_index :questions, :examiner_id
  end
end
