class CamerasController < ApplicationController

  #autocomplete :camera, :model_name, :full => true, :extra_data => [:brand]

  def index
    @camera = Camera.first
    @autocomplete_items ||= (Camera.all.map(&:model_name) << "")
  end

  def search
    #Camera.scoped(:conditions => ['model_name like ?',"%#{params[:auto_complete]}%"], :order => 'title ASC')
    min_price = params[:price_start].present? ? params[:price_start] : 0
    max_price = params[:price_end].present? ? params[:price_end] : 999999
    model = params[:auto_complete].present? ? params[:auto_complete] : ""
    @cameras = Camera.where("model_name like ? and amzn_price > ? and amzn_price < ?",
                            "%#{model}%", min_price, max_price).paginate(:page => params[:page]).order('id DESC')
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
