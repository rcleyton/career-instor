class Dashboard::VacanciesController < DashboardController
  def index
    @vacancies = Vacancy.all
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  def new
    @vacancy = Vacancy.new
  end

  def create
    @vacancy = Vacancy.create(vacancies_params)
    if @vacancy.save
      redirect_to dashboard_vacancy_path(@vacancy)
    else
      render :new
    end
  end

  private
  def vacancies_params
    params.require(:vacancy).permit(:title, :vacancy_level, :description, :requirements,
    :desired_skills, :salary_range, :benefits, :vacancy_level, :work_model, :working_day)
  end
end