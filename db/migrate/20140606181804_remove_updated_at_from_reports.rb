class RemoveUpdatedAtFromReports < ActiveRecord::Migration
  def change
  	change_column :reports, :updated_at, :date
  end
end
