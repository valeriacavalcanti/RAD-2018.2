class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.string :nome
      t.string :matricula
      t.string :senha
      t.string :email
      t.string :telefone
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
