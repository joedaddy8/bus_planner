class CreateAlarms < ActiveRecord::Migration
  def change
    create_table :alarms do |t|
      t.string :freq
      t.integer :count
      t.datetime :date
      t.string :contact
      t.string :network_provider

      t.timestamps
    end
  end
end
