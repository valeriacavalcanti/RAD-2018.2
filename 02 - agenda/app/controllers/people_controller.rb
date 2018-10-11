class PeopleController < ApplicationController
  def index
  	@frase = "O dia está lindo. Que bom!"
  	@numeros = [10, 20, 30, 40]
  	@pessoas = Person.all
  end
end
