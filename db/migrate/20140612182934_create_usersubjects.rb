class CreateUsersubjects < ActiveRecord::Migration
  def change
    create_table :usersubjects do |t|
      t.integer :user_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
