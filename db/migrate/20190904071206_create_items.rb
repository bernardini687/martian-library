class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.text :description, unique: true
      t.string :image_url, unique: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
