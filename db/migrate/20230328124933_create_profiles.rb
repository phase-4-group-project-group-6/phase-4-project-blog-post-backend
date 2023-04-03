class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.string :avatar_url
      t.string :username, null: false
      t.string :email, null: false
      t.string :bio, null: false
      t.belongs_to :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
