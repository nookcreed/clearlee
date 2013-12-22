class CamerasController < ApplicationController

  #autocomplete :camera, :model_name, :full => true, :extra_data => [:brand]

  def index
    @camera = Camera.first
    @autocomplete_items = Camera.all.map(&:model_name)
  end

  def search
    @cameras = Camera.where("model_name like ?", "%#{params[:auto_complete]}%").paginate(:page => params[:page]).order('id DESC')
  end

  #def search
  #  @camera = Camera.all
  #  #raise params.inspect
  #
  #end
  #
  #def autocomplete_camera_model_name
  #  @camera = Camera.all
  #  #raise params.inspect
  #  #cameras = Camera.model_name_like()
  #  cameras = Camera.where(["model_name LIKE ?", "%" + params[:term] + "%"])
  #  render json: cameras.map(&:model_name)
  #end
end
