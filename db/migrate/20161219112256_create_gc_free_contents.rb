class CreateGcFreeContents < ActiveRecord::Migration[5.0]
  def change
    create_table :gc_free_contents do |t|
      t.references :component, foreign_key: true
      t.references :image, foreign_key: true
      t.string :image_position
      t.string :text
      t.references :main_title, foreign_key: true
      t.references :cta, foreign_key: true

      t.timestamps
    end
  end
end
