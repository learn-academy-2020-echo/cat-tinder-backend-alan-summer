class CreateAliens < ActiveRecord::Migration[6.0]
  def change
    create_table :aliens do |t|
      t.string :name
      t.integer :distance
      t.string :planet
      t.string :image

      t.timestamps
    end
  end
end
