class ChangeTypeOfBeschaeftigung < ActiveRecord::Migration[5.0]
  def change
    change_column :jobs, :beschäftigung, :integer
  end
end
