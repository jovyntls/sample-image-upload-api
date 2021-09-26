class UploadsController < ApplicationController
  def index
    response = {'message' => 'Hello!'}
    render json: response
  end

  def create
    render json: {'message': 'Hello!', 'image_size': params[:img].size}
  end
end
