class CreateTerrainPages < ActiveRecord::Migration[5.0]
  def change
    create_table :terrain_pages do |t|
      t.string :name

      t.timestamps
    end
  end
end
