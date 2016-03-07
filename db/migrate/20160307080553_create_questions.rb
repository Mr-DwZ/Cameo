class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :properties
      t.integer :exam_id

      t.timestamps null: false
    end
    add_index :questions, :exam_id
  end
end
