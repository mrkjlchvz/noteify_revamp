class AddDeletedAtOnNotes < ActiveRecord::Migration
  def change
    add_column :notes, :deleted_at, :datetime
    add_index :notes, :deleted_at
  end
end
