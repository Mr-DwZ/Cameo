class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :properties

      t.timestamps null: false
    end
  end
end
