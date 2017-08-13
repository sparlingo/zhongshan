class PagesController < ApplicationController
  def about
  end

  def home
    @posts = Blog.all
    @albums = Album.all

  end

  def contact
  end
end
