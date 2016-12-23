class CreateKeyPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :key_points do |t|
      t.string :text
      t.references :secondary_title, foreign_key: true
      t.references :image, foreign_key: true
      t.references :gc_key_point, foreign_key: true

      t.timestamps
    end
  end
end
