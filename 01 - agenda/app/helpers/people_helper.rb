module PeopleHelper
	def somar
		soma = 0
		for n in @numeros
			soma = soma + n
		end
		return soma
	end
end
