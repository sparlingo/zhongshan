class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :authenticate_user!
  include DeviseWhitelist
  include SetSource
  #include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = ZhonshanViewTool::Renderer.copyright 'Kevin Sparling', 'All rights reserved'
  end

  #def current_user
    #@current_user ||= User.find_by_id(session[:user])
  #end

end

module ZhonshanViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end