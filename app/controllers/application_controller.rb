class ApplicationController < ActionController::Base
  protect_from_forgery unless: :json_request?

  def json_request?
    request.format.json?
  end
end
