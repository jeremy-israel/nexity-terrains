class CreateScHomeHeads < ActiveRecord::Migration[5.0]
  def change
    create_table :sc_home_heads do |t|
      t.references :component, foreign_key: true
      t.string :selected_layout
      t.references :cta, foreign_key: true
      t.references :image, foreign_key: true
      t.references :main_title, foreign_key: true
      t.references :secondary_title, foreign_key: true
      t.string :selected_news
      t.string :selected_programs

      t.timestamps
    end
  end
end
