class PhotosController < ApplicationController
  def index
  end  
  
  
  def photo_params
  params.require(:photo).permit(:content, :image).merge(user_id: current_user.id)
  end


end
