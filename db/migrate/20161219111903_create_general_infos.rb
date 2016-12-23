class CreateGeneralInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :general_infos do |t|
      t.string :phone_number
      t.string :facebook_id

      t.timestamps
    end
  end
end
