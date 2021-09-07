class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :blog_name
      t.string :description
      t.timestamps
    end
  end
end
