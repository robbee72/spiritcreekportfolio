module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "KLR Skill Set | My Portfolio Website"
    @seo_keywords = "Keith Robinson portfolio"
  end
end
