class AddFieldToVacancies < ActiveRecord::Migration[5.2]
  def change
    add_column :vacancies, :field, :string
  end
end
