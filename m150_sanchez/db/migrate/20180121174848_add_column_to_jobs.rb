class AddColumnToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :berufsfeld, :string
  end
end
