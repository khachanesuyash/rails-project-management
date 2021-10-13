class RenamePhaseIdsToPhaseId < ActiveRecord::Migration[6.1]
  def change
    rename_column :projects, :phase_ids, :phase
  end
end
