class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  layout :layout_by_resourece

  private

  def layout_by_resourece
    "authentication" if devise_controller?
  end
end
