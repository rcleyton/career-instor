class ApplicationController < ActionController::Base
  layout :layout_by_resourece

  private

  def layout_by_resourece
    "authentication" if devise_controller?
  end
  
end
