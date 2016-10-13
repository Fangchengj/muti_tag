json.extract! article, :id, :name, :tag_one_id, :tag_two_id, :created_at, :updated_at
json.url article_url(article, format: :json)