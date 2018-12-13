class RemoveInstructorFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :instrutor, :string
    remove_column :courses, :matricula, :string
    remove_column :courses, :senha, :string
  end
end
