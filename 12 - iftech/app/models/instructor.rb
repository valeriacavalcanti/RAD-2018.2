class Instructor < ApplicationRecord
	belongs_to :course

	validates :nome, presence: true
	validates :matricula, presence: true, uniqueness: {case_sensitive: true}
	validates :senha, presence: true
end
