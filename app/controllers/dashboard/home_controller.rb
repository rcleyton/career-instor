class Dashboard::HomeController < DashboardController
  def index
    @vacancies = Vacancy.all
  end
end