require 'uri'
require 'net/http'
require 'openssl'

class GetWeather

  URL = URI("https://weatherbit-v1-mashape.p.rapidapi.com/current?lon=144.7&lat=-37.8")

  def getWeather
    http = Net::HTTP.new(URL.host, URL.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(URL)
    request["X-RapidAPI-Key"] = '721ed2a736msh6a4f4edbb59ef4bp1b9407jsnf8b969ca9236'
    request["X-RapidAPI-Host"] = 'weatherbit-v1-mashape.p.rapidapi.com'

    response = http.request(request)
    response.body
  end
end
