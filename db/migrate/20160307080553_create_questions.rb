class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.text :description
      t.text :input
      t.text :output
      t.text :sample_input
      t.text :sample_output
      t.text :hint
      t.text :test_input
      t.text :test_output

      t.integer :exam_id
      t.integer :examiner_id

      t.timestamps null: false
    end
    add_index :questions, :exam_id
    add_index :questions, :examiner_id
  end
end
