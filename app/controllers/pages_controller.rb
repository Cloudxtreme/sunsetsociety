class PagesController < ApplicationController

  def index
    uri = URI.parse("https://api.instagram.com/v1/tags/sunset/media/recent?access_token=#{ENV['INSTAGRAM_ACCESS_TOKEN']}&count=25")
    run = (http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request))
    @instagram = JSON.parse(response.body)
  end

end
