class Height::Request
  def self.get(endpoint, query = nil)
    uri = URI("https://api.height.app/#{endpoint}")
    http = Net::HTTP.new(uri.hostname, uri.port)
    http.use_ssl = true
    headers = {
      'Authorization' => "api-key #{ENV['HEIGHT_API_KEY']}",
      'Content-Type' => 'application/json'
    }
    uri.query = URI.encode_www_form(query) if query 
    req = Net::HTTP::Get.new(uri, headers)

    http.request(req)
  end

  def self.put(endpoint, data)
    uri = URI("https://api.height.app/#{endpoint}")
    http = Net::HTTP.new(uri.hostname, uri.port)
    http.use_ssl = true
    headers = {
      'Authorization' => "api-key #{ENV['HEIGHT_API_KEY']}",
      'Content-Type' => 'application/json'
    }
    req = Net::HTTP::Put.new(uri, headers)
    req.body = data.to_json
    res = http.request(req)

    http.request(req)
  end
end
