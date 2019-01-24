json.extract! registration, :id, :nome, :matricula, :senha, :email, :telefone, :course_id, :created_at, :updated_at
json.url registration_url(registration, format: :json)
