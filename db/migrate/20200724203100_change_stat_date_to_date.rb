class ChangeStatDateToDate < ActiveRecord::Migration[6.0]
  def change
    remove_column :stats, :date
    add_column :stats, :date, :date
  end
end
