class ChangeSeverityToInteger < ActiveRecord::Migration[6.0]
  def change
    remove_column :injuries, :severity
    add_column :injuries, :severity, :integer
  end
end
