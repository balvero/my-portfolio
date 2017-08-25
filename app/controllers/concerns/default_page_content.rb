module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Noobita | Portfolio Website'
    @seo_keywords = 'Bernard Alvero Portfolio'
  end
end