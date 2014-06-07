class Renamecolumnreports < ActiveRecord::Migration
  def change
  	rename_column :reports, :updated_at, :evaluation_date
  end
end
