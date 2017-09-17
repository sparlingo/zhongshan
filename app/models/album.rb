class Album < ApplicationRecord
    has_many :tags
    accepts_nested_attributes_for :tags,
                                    allow_destroy: true,
                                    reject_if: lambda { |attrs| attrs['name'].blank? }
                                
    validates_presence_of :title, :subtitle, :body

    mount_uploader :main_image, AlbumUploader
    mount_uploader :thumb_image, AlbumUploader

    has_many :photos

    def self.by_position
        order("position ASC")
    end

    # not needed, but this is an example of how to set scope, I like the way above better though
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

    def set_defaults
    end
end
