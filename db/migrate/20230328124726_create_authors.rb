class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :image
      t.string :location

      t.timestamps
    end
  end
end
