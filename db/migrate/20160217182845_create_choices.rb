class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.timestamps null: false
      t.string :choice
      t.integer :question_id
      t.integer :votes, :default => 0
    end

  end
end
