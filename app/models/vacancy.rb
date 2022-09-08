class Vacancy < ApplicationRecord
  validates :title, :vacancy_level, :description, :requirements, :desired_skills,
            :salary_range, :benefits, :vacancy_location, :work_model, :working_day, 
            :field, presence: true

  WORK_MODEL = %i[ Presencial Remoto ]
  VACANCY_LEVEL =  %i[ Estagiário Trainee Assistente Júnior Pleno Senior Coordenador Gerente ]

  before_create :vacancy_code

  private
  def vacancy_code
    charset = Array('A'..'Z') + Array('a'..'z')
    coding = Array.new(6) { charset.sample }.join
    self.code = coding.upcase
  end
end
