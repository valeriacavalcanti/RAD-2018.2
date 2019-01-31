class Registration < ApplicationRecord
  belongs_to :course
  belongs_to :student

  validates :student, uniqueness: {case_sensitive: true, scope: :course}
end
