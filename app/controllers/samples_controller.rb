class SamplesController < ApplicationController
  def index
    payload = [
      { name: "Student 1", department: "SD", attended: true },
      { name: "Student 2", department: "SD", attended: true },
      { name: "Student 3", department: "SD", attended: true },
      { name: "Student 4", department: "ML", attended: true },
      { name: "Student 5", department: "ML", attended: true },
      { name: "Student 6", department: "SD", attended: false }
    ]
    render :json => payload, :status => 200
  end

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
        message: "Request completed successfully!",
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
