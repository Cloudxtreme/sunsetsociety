class InstagramPresenter
  def initialize(instagram_data)
    @instagram_data = instagram_data
  end

  # from top

  def attribution
    instagram_data['attribution'] if instagram_data['attribution'].present?
  end

  def tags
    instagram_data['tags'] if instagram_data['tags'].present?
  end

  def link
    instagram_data['link'] if instagram_data['link'].present?
  end

  def latitude
    instagram_data['location']['latitude'] if instagram_data['location'].present?
  end

  def longitude
    instagram_data['location']['longitude'] if instagram_data['location'].present?
  end

  # def comments
  #   if instagram_data['comments']['count'] > 0
  #     instagram_data['comments'] if instagram_data['comments'].present?
  #   end
  # end

  private

  attr_reader :instagram_data
end
