class CreateBeaches < ActiveRecord::Migration[6.0]
  def change
    create_table :beaches do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :image_url
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
