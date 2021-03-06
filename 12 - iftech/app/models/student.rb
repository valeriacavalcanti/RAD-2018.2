class Student < ApplicationRecord
	has_many :registrations
	has_many :contacts

	accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true

	validates :nome, presence: true
	validates :matricula, presence: true, uniqueness: {case_sensitive: true}
	validates :senha, presence: true

end
