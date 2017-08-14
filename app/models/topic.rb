class Topic < ApplicationRecord
    include Placeholder
    validates_presence_of :title

    after_initialize :set_defaults

    def set_defaults
        self.badge ||= Placeholder.image_generator(height: '200', width: '200')
    end

    has_many :blogs
end
