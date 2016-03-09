class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.text :code_block
      t.integer :language
      t.timestamps null: false
    end
  end
end
