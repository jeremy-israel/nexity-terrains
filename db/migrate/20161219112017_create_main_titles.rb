class CreateMainTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :main_titles do |t|
      t.string :text
      t.integer :size

      t.timestamps
    end
  end
end
