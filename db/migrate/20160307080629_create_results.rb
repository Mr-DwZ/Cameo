class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :exam_id
      t.integer :examinee_id
      t.integer :score

      t.timestamps null: false
    end
    add_index :results, :exam_id
    add_index :results, :examinee_id
  end
end
