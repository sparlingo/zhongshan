module ApplicationHelper
    /
    def login_helper style=''
        if current_user.is_a?(GuestUser)
            (link_to "Register", new_user_registration_path, class: style) + 
            "<br>".html_safe +
            (link_to "Login", new_user_session_path, class: style)
        else
            link_to "Logout", destroy_user_session_path, method: :delete, class: style
        end
    end
    /
    def login_helper style=''
        if current_user.is_a?(User)
            link_to "Logout", destroy_user_session_path, method: :delete, class: style
        else
            (link_to "Register", new_user_registration_path, class: style) + 
            "<br> &nbsp&nbsp&nbsp".html_safe +
            (link_to "Login", new_user_session_path, class: style)
        end
    end

    def nav_items
        [
            {
                url: root_path,
                title: 'Home'
            },
            {
                url: about_us_path,
                title: 'About Us'
            },
            {
                url: contact_path,
                title: 'Contact Us'
            },
            {
                url: blogs_path,
                title: 'Blog'
            },
            {
                url: albums_path,
                title: 'Photo Albums'
            }
        ]
    end

    def navbar_helper style, tag_type
        nav_links = ''
        nav_items.each do |item|
            nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
        end

        nav_links.html_safe
    end

    def source_helper(layout_name)
        if session[:source]
            greeting = "Thanks for visiting me from #{session[:source]} 
            and you are on the #{layout_name} layout"
            content_tag(:p, greeting, class: "source-gretting")
        end
    end
    
    def active? path
        "active" if current_page? path
    end

    def alerts
        alert = (flash[:alert] || flash[:error] || flash[:notice])

        if alert
            alert_generator alert
        end
    end
    
    def alert_generator msg
        js add_gritter(msg, title: "ZWIE", time: 4000, stick: false)
    end
end
