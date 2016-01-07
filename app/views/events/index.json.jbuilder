json.array!(@events) do |event|
  json.extract! event, :id, :title, :starts_at, :ends_at, :description, :location, :price, :internal, :approved
  json.url event_url(event, format: :json)
end
