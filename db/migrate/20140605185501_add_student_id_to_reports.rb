class AddStudentIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :student_id, :integer
  end
end
