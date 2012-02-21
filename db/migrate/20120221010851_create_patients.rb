class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :guid_d
      t.string :guid_e

      t.timestamps
    end
  end
end
