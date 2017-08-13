class Album < ApplicationRecord
    include Placeholder
    validates_presence_of :title, :subtitle, :main_image

    def self.angular
        where(subtitle: 'Angular')
    end

    # not needed, but this is an example of how to set scope, I like the way above better though
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

    after_initalize :set_defaults

    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: '480', width: '320')
    end
end
