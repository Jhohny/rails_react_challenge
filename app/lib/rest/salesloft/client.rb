class Rest::Salesloft::Client
  def initialize
    @settings = Settings.salesloft
    @base_url = @settings.url
  end

  def get_people
    uri = URI(@base_url + @settings.people_path)
    make_get_request(uri)
  end

  def make_get_request(uri)
    request = Net::HTTP::Get.new(uri)
    request["Authorization"] = "Bearer #{@settings.token}"

    Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http|
      http.request(request)
    }
  end
end
