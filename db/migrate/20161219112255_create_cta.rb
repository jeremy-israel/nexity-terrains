class CreateCta < ActiveRecord::Migration[5.0]
  def change
    create_table :cta do |t|
      t.string :label
      t.string :link

      t.timestamps
    end
  end
end
