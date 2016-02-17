class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.timestamps null: false
      t.string :question
      t.string :creator_email

    end
  end
end
