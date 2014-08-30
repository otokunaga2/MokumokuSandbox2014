json.array!(@words) do |word|
  json.extract! word, :id, :uid, :wid, :wordbody, :jpbody, :remember
  json.url word_url(word, format: :json)
end
