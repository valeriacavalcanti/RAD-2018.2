class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :nome
      t.string :matricula
      t.string :senha

      t.timestamps
    end
  end
end
