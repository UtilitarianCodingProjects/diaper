class RemoveKeyFromCanonicalItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :canonical_items, :key, :string
  end
end
