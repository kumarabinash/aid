class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.references :sub_category, index: true, foreign_key: true
      t.integer :view_count

      t.timestamps null: false
    end
  end
end
