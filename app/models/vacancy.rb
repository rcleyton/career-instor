class Vacancy < ApplicationRecord
  validates :title, :vacancy_level, :description, :requirements, :desired_skills,
            :salary_range, :benefits, :vacancy_location, :work_model, :working_day, 
            presence: true
end
