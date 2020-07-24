class ChangeInjuryDateToDate < ActiveRecord::Migration[6.0]
  def change
      remove_column :injuries, :date
      add_column :injuries, :date, :date
    end
  end
