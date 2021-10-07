class UploadsController < ApplicationController
  def index
    response = { 'message' => 'Hello!' }
    render json: response
  end

  def create
    if params.nil? || params[:img].nil?
      payload = { message: '"img" parameter not provided.' }
      status_code = 400
    else
      payload = { message: 'You have made a POST request!', file_size: params[:img].size }
      status_code = 201
    end
    render json: payload, status: status_code
  end
end
