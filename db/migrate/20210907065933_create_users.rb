class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :email
      t.boolean :role
      
      t.timestamps
    end
  end
end
