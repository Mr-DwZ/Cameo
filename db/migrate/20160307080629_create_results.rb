class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :examinee, index: true, foreign_key: true
      t.references :exam, index: true, foreign_key: true
      t.integer :score

      t.timestamps null: false
    end
  end
end
