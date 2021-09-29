class SamplesController < ApplicationController

  # GET /:id
  def show
    status_code = params[:id].to_i
    if !Rack::Utils::SYMBOL_TO_STATUS_CODE.has_value?(status_code) then
      payload = {
        error: "This is not a valid HTTP status code.",
        status: 404
      }
      status_code = 404
    elsif status_code == 200 then
      payload = {
        error: "Request completed successfully!",
        status: status_code
      }
    else 
      payload = {
        error: "An error occurred with status code #{status_code}",
        status: status_code
      }
    end
    render :json => payload, :status => status_code
  end
end
