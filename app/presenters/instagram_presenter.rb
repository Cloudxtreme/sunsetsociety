class InstagramPresenter
  def initialize(instagram_data)
    @instagram_data = instagram_data
  end

  def latitude
    instagram_data['location']['latitude'] if instagram_data['location'].present?
  end

  private

  attr_reader :instagram_data
end
