class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string  :subject
      t.time    :duration
      t.datetime :begin_time
      t.integer  :total_score
      t.integer  :problem_number

      t.timestamps null: false
    end
  end
end
