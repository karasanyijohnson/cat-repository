json.extract! student_app, :id, :firstname, :lastname, :category, :created_at, :updated_at
json.url student_app_url(student_app, format: :json)
