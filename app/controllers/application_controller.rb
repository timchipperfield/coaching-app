class ApplicationController < ActionController::Base

  before_action :authenticate_user!, if: -> { not Rails.env.test? }

end
