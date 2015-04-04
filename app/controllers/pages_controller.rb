class PagesController < ApplicationController

  def index
    uri = URI.parse("https://api.instagram.com/v1/tags/sundown/media/recent?access_token=#{ENV['INSTAGRAM_ACCESS_TOKEN']}&count=25")
    run = (http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request))

    p JSON.parse(response.body)['data'].first
    @instagram = JSON.parse(response.body)

    # @instagram_data = @instagram["data"].map do |data|
      # InstagramPresenter.new(data)
    # end

    # @instagram = InstagramPresenter.new(JSON.parse(response.body))
  end

end
