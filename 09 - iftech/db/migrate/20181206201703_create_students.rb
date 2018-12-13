class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :nome
      t.string :matricula
      t.string :senha
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
