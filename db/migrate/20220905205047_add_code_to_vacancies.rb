class AddCodeToVacancies < ActiveRecord::Migration[5.2]
  def change
    add_column :vacancies, :code, :string
  end
end
