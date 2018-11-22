class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :nome
      t.integer :dia
      t.integer :carga_horaria
      t.string :instrutor
      t.string :matricula
      t.string :senha

      t.timestamps
    end
  end
end
