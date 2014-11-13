json.array!(@udays) do |uday|
  json.extract! uday, :id, :name, :rno
  json.url uday_url(uday, format: :json)
end
