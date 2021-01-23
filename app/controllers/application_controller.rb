class ApplicationController < ActionController::Base

  before_action :set_csrf_cookie

  inertia_share do
    {
      errors: session.delete(:errors) || [],
      flash: session.delete(:flash) || {}
    }
  end

  private

  # Store the CSRF token in a non-session cookie so Axios can access it
  def set_csrf_cookie
    cookies['XSRF-TOKEN'] = form_authenticity_token
  end

end
