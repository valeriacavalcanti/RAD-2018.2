json.extract! student, :id, :nome, :matricula, :senha, :email, :telefone, :created_at, :updated_at
json.url student_url(student, format: :json)
