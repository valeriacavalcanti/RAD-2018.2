class Course < ApplicationRecord
	has_one :instructor

	accepts_nested_attributes_for :instructor
end
