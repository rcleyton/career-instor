module VacancyHelper
  def total_vacancies
    @vacancy = Vacancy.all.count
  end
end