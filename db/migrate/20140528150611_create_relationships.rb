class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :following_id

      t.timestamps
    end
    add_index :relationships, :follower_id
    add_index :relationships, :following_id
  end
end
