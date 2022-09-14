class ApplicationController < ActionController::Base
  layout :layout_by_resourece

  def after_sign_in_path_for(resource)
    dashboard_home_index_path
  end

  private

  def layout_by_resourece
    "authentication" if devise_controller?
  end
  
end
