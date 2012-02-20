class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :guid_a
      t.string :guid_b
      t.string :guid_c

      t.timestamps
    end
  end
end
