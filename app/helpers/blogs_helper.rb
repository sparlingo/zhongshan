module BlogsHelper
    def gravatar_helper user
        image_tag "https://www.gravatar/avatar/#{Digest::MD5.hexdigest('kevinsparling@gmail.com')}", width: 40
    end

    def blog_status_color blog
        if blog.draft?
            'color: grey;'
        else
            'color: blue;'
        end
    end
end
