class RenamePolitician < ActiveRecord::Migration
  def change
    rename_column :quotes, :poltician_id, :politician_id
  end
end
