json.extract! menuitem, :id, :menuitemID, :name, :price, :description, :created_at, :updated_at
json.url menuitem_url(menuitem, format: :json)
