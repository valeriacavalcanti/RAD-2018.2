class Contact < ApplicationRecord
  belongs_to :student

  validates :tipo, presence: true, inclusion: {in: %w(email telefone)}
  validates :valor, presence: true
end
