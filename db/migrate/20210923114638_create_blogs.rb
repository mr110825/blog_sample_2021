class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.integer :state, default: 0, null: false
      t.timestamps
    end
  end
end
