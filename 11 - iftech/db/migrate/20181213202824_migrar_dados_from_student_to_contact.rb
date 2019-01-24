class MigrarDadosFromStudentToContact < ActiveRecord::Migration[5.2]
  def change
  	Student.find_each do |estudante|
  		Contact.create(
  			:tipo => 'email',
  			:valor => estudante.email,
  			:student_id => estudante.id
  		)

  		Contact.create(
  			:tipo => 'telefone',
  			:valor => estudante.telefone,
  			:student_id => estudante.id
  		)
  	end
  end
end
