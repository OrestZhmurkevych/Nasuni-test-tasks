class HttpClient

  attr_reader :header, :base_url

  def initialize
    @base_url = 'https://petstore.swagger.io/v2'
    @header = { content_type: 'application/json' }
  end

  def get(endpoint)
    url = @base_url + endpoint
    RestClient::Request.execute(method: :get, url:, headers: @header)
  end

  def post(endpoint, payload)
    url = @base_url + endpoint
    RestClient::Request.execute(method: :post, url:, payload:, headers: @header)
  end

  def put(endpoint, payload)
    url = @base_url + endpoint
    RestClient::Request.execute(method: :put, url:, payload:, headers: @header)
  end

  def delete(endpoint)
    url = @base_url + endpoint
    RestClient::Request.execute(method: :delete, url:, headers: @header)
  end
end
