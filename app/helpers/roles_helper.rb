module RolesHelper
    def has_role?(roles)
        current_user && current_user.has_role?(roles)
    end
end