class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.text :code_block
      t.integer :language
      t.timestamps null: false
      t.integer :examinee_id
      t.integer :question_id
    end

    add_index :codes, :examinee_id
    add_index :codes, :question_id
  end
end
