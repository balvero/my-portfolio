module PortfoliosHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img img, type
    if img.model.main_image? || img.model.thumbnail?
      img
    elsif type == 'thumbnail'
      image_generator(height: '480', width: '480')
    elsif type == 'main'
      image_generator(height: '1080', width: '1920')
    end
  end
end
