class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|

      t.timestamps null: false
      t.string :choice
      t.integer :votes

    end
  end
end
