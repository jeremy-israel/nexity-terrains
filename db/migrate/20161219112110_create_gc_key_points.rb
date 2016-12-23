class CreateGcKeyPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :gc_key_points do |t|
      t.references :component, foreign_key: true
      t.references :main_title, foreign_key: true

      t.timestamps
    end
  end
end
