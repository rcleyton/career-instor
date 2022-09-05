class CreateVacancies < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.string :vacancy_level
      t.string :description
      t.text :requirements
      t.text :desired_skills
      t.decimal :salary_range, precision: 8, scale: 2
      t.text :benefits
      t.string :vacancy_location
      t.string :work_model
      t.string :working_day

      t.timestamps
    end
  end
end
