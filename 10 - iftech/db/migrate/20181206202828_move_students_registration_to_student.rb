class MoveStudentsRegistrationToStudent < ActiveRecord::Migration[5.2]
  def change
  	Registration.find_each do |inscricao|
  		Student.create(
  			:nome => inscricao.nome,
  			:matricula => inscricao.matricula,
  			:senha => inscricao.senha,
  			:email => inscricao.email,
  			:telefone => inscricao.telefone
  		)
  		inscricao.student_id = Student.last.id
  		inscricao.save
  	end
  end
end
