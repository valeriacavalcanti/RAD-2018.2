class PeopleController < ApplicationController
  def index
  	@nome = "Valéria"
  	@idade = 15
  	@numeros = [10, 20, 30, 40]
  	@p = Person.new("Valéria", 15)
  end

  def edit
  end
end
