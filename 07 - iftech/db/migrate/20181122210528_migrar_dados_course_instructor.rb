class MigrarDadosCourseInstructor < ActiveRecord::Migration[5.2]
  def change

  	Course.find_each do |curso|
  		Instructor.create(
  			:nome => curso.instrutor,
  			:matricula => curso.matricula,
  			:senha => curso.senha,
  			:course_id => curso.id
  		)
  	end
  	
  end
end
