class Student < ApplicationRecord
	has_many :registrations
	has_many :contacts
end
