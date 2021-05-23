json.extract! microapp_db, :id, :Author, :Title, :CreationDate, :created_at, :updated_at
json.url microapp_db_url(microapp_db, format: :json)
