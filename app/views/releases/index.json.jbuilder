json.array!(@releases) do |release|
  json.extract! release, :id, :title, :abstract, :pdf, :pdf_file_name
  json.url release_url(release, format: :json)
end
