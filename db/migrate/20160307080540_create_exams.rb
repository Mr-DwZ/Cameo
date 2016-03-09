class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string   :subject
      t.integer  :duration
      t.datetime :begin_time
      t.integer  :total_score
      t.integer  :problem_number
      t.integer  :examiner_id
      t.timestamps null: false
    end

    add_index :exams, :examiner_id
  end
end
