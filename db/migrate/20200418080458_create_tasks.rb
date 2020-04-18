class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id, null: false
      t.string :name
      t.text :description
      t.boolean :done
      t.date :deadline


      t.timestamps
    end
  end
end
