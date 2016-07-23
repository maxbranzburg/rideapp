class RenameRidersToUsers < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :riders, :users
  end

  def self.down
    rename_table :users, :riders
  end
end
