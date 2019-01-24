namespace :db do
  desc "Gerar informação falsa para o banco."
  task faker: :environment do

  	# criar cursos
	for i in 1..10
		Course.create!(
			nome: 			Faker::Pokemon.move,
			dia: 			i,
			carga_horaria: 	100,
			instructor_attributes: {
				nome: 		Faker::Pokemon.name,
				matricula: 	Faker::Number.number(6),
				senha: 		Faker::Number.number(4)
			}
		)
	end

	# criar estudantes
	for i in 1..400
		Student.create!(
			nome: 		Faker::Name.name,
			matricula: 	Faker::Number.number(6),
			senha: 		Faker::Number.number(4)
		).contacts.create!([
			{
				tipo: 	"email",
				valor: 	Faker::Internet.email
			},
			{
				tipo: 	"telefone",
				valor: 	Faker::PhoneNumber.cell_phone
			}
		])
	end

	# criar inscrições
	for i in 1..400
		Registration.create!(
			course:  Course.all.sample,
			student: Student.all.sample
		)
	end
  end
end
