class CreateInjuries < ActiveRecord::Migration[6.0]
  def change
    create_table :injuries do |t|
      t.string :site
      t.string :description
      t.string :severity
      t.string :date
      t.belongs_to :athlete, null: false, foreign_key: true
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
