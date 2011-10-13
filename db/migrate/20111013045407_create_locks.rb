class CreateLocks < ActiveRecord::Migration
  def self.up
    create_table :locks do |t|
      t.integer :user_id
      t.integer :lockable_id
      t.string :lockable_type

      t.timestamps
    end
  end

  def self.down
    drop_table :locks
  end
end
