class CreateRaters < ActiveRecord::Migration
  def change
    create_table :raters do |t|
      t.integer :question1
      t.integer :question2
      t.integer :questiong3
      t.string :question4
      t.integer :course_id
      t.timestamps
      
    end
    add_index :raters, [:course_id, :created_at]

  end
end
