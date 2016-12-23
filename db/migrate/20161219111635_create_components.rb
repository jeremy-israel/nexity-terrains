class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.string :name
      t.string :component_type
      t.references :terrain_page, foreign_key: true

      t.timestamps
    end
  end
end
