class CreateProjects < ActiveRecord::Migration
    def change
        create_table :projects do |t|
            t.string :project_name
            t.integer :teacher_id
            t.integer :student_id
    
            t.timestamps null: false
        end
    end
end