json.array!(@listings) do |listing|
  json.extract! listing, :id, :currency, :bank, :price, :min, :max
  json.url listing_url(listing, format: :json)
end
