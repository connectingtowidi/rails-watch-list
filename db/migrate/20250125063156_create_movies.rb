class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :overview, null: false
      t.string :poster_url
      t.float :rating

      t.timestamps

      t.index :title, unique: true
      t.index :overview, unique: true
    end
  end
end
