module DefaultPageContent
    extend ActiveSupport::Concern

    included do 
        before_filter :set_title
    end

    def set_page_defaults
        @page_title = "ZWIE | Kindergarten"
        @seo_keywords = "Kevin Sparling"
    end
end