class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin" do |t|
      t.string :name
      t.string :email,null:false
      t.string :password
      t.string :login_token
      t.integer :user_type,default:0,null:false
      t.boolean :activity,default:0,null:false
      t.timestamps
    end
  end
end
