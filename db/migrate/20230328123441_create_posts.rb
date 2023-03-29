class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
