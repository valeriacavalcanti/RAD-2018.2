json.extract! course, :id, :nome, :dia, :carga_horaria, :instrutor, :matricula, :senha, :created_at, :updated_at
json.url course_url(course, format: :json)
