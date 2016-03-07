class ExamExamineeJoinTable < ActiveRecord::Migration
  def self.up
    create_table :examinees_exams, :id => false do |t|
      t.integer :examinee_id
      t.integer :exam_id
    end
  end

  def self.down
    drop_table :examinees_exams
  end
end
