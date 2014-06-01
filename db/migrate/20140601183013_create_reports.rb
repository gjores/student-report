class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :reason
      t.text :teacher_experience
      t.text :student_experience
      t.datetime :updated_at
      t.boolean :updated

      t.timestamps
    end
  end
end
