class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.timestamps null: false
      t.string :question
      t.integer :user_id
    end
  end
end
