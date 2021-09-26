class UploadsController < ApplicationController
  def index
    response = {'message' => 'Hello!'}
    render json: response
  end

  def create
    render json: {'message': 'You have made a POST request!', 'file_size': params[:img].size}
  end
end
