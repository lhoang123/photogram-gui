class PhotosController < ApplicationController
  def create
   
    a = Photo.new
    a.username = params.fetch("image")
    a.username = params.fetch("caption")
    a.username = params.fetch("input_photoID")
 
    a.save 
 
    redirect_to("/photos")
   end 
  
  def index
    @list_of_photos = Photo.all

    render({ :template => "photos_templates/index"})
  end

  def show
  url_photo = params.fetch("path_photoID")

  @the_photo = Photo.where({ :id => url_photo}).at(0)

    if @the_photo == nil
      redirect_to ("/404")
    else
    render({ :template => "photos_templates/show"})
    end
  end
end 
