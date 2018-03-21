module DefaultPageContent
  extend ActiveSupport::Concern
  included do
      before_action :set_page_defaults
    end

  def set_page_defaults
    @page_title = "Portfolio Site | Dennis Espinoza"
    @seo_keywords = "Dennis Espinoza portfolio"
  end
end