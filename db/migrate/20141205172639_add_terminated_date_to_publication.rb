class AddTerminatedDateToPublication < ActiveRecord::Migration
  def change
    add_column :publications, :terminated_date, :date
  end
end
