class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks,options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
      t.integer :user_id,null:false
      t.string :name
      t.datetime :deadline
      t.boolean :done,default:false,null:false
      t.timestamps
    end
  end
end
