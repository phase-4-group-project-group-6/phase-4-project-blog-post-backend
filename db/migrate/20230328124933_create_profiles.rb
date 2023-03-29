class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :image
      t.string :username
      t.string :email
      t.string :bio
      t.integer :author_id

      t.timestamps
    end
  end
end
