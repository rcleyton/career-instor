class VacanciesController < ApplicationController
  def index
    # @vacancies = Vacancy.paginate(page: params[:page], per_page: 5)
    @q = Vacancy.ransack(params[:q])
    @vacancy= @q.result(distinct: true)
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end
end