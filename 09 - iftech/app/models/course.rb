class Course < ApplicationRecord
	has_one :instructor
	has_many :registrations

	accepts_nested_attributes_for :instructor
end
