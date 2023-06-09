class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :description, null: false
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :user_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
