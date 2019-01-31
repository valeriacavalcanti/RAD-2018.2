class Course < ApplicationRecord
	has_one :instructor
	has_many :registrations

	accepts_nested_attributes_for :instructor

	validates :nome, presence: true
	validates :dia, presence: true
	validates :carga_horaria, presence: true
end
