json.array!(@hands) do |hand|
  json.extract! hand, :id
  json.url hand_url(hand, format: :json)
end
