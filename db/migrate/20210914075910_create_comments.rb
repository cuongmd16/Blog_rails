class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :blog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
