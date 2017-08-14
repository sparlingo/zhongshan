class AlbumsController < ApplicationController
    def index
        @album_items = Album.all
    end

    def new
        @album_item = Album.new
        3.times { @album_item.tags.build }
    end

    def create
        @album_item = Album.new(params.require(:album).permit(:title, :subtitle, :main_image, 
            tags_attributes: [:name]
        ))

        respond_to do |format|
            if @album_item.save
                format.html { redirect_to albums_path, notice: 'Your album is now live' }
            else 
                format.html { render :new }
            end
        end
    end

    def edit
        @album_item = Album.find(params[:id])
    end

    def update
        @album_item = Album.find(params[:id])

        respond_to do |format|
            if @album_item.update(params.require(:album).permit(:title, :subtitle, :main_image))
                format.html { redirect_to albums_path, notice: 'The album is updated ' }
            else
                format.html { render :edit }
            end
        end
    end

    def show
        @album_item = Album.find(params[:id])
    end

    def destroy
        @album_item = Album.find(params[:id])

        @album_item.destroy
        respond_to do |format|
            format.html { redirect_to albums_url, notice: "Album was removed" }
        end
    end
end
