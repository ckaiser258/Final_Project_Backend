class ChangeResultToFloat < ActiveRecord::Migration[6.0]
  def change
    remove_column :stats, :result
    add_column :stats, :result, :float
  end
end
