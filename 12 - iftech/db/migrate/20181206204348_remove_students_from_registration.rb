class RemoveStudentsFromRegistration < ActiveRecord::Migration[5.2]
  def change
    remove_column :registrations, :nome, :string
    remove_column :registrations, :matricula, :string
    remove_column :registrations, :senha, :string
    remove_column :registrations, :email, :string
    remove_column :registrations, :telefone, :string
  end
end
