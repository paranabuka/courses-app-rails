class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  layout :application_layout

  private
    def application_layout
      authenticated? ? "application" : "authentication"
    end
end
