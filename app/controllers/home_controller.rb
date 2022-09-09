class HomeController < ApplicationController
  def index
    @vacancies = Vacancy.paginate(page: params[:page], per_page: 5)
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  def search
    @vacancies = Vacancy.where('title like ? OR code like ?',
    "%#{params[:q]}%", "%#{params[:q]}%")
  end
end