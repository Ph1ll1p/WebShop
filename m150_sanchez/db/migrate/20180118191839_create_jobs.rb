class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :titel
      t.string :beschreibung
      t.string :beschäftigung
      t.boolean :verfügbar

      t.timestamps
    end
  end
end
