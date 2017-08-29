module AlbumsHelper
    def image_generator(height: , width:)
        "http://placehold.it/#{height}x#{width}"
    end

    def album_img img, type
        if img.model.main_image? || img.model.thumb_image?
            img
        elsif type == 'thumb'
            image_generator(height: '300', width: '200')
        else type == 'main'
            image_generator(height: '600', width: '400')
        end
    end
end
