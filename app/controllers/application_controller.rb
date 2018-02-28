class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from ActionView::MissingTemplate do |exception|
    render :template => "missing_tenant"
  end
end
