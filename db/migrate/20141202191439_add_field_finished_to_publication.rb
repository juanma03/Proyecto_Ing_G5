class AddFieldFinishedToPublication < ActiveRecord::Migration
  def change
  	add_column :publications, :finished, :boolean
  	add_column :publications, :winner_id, :integer
  end
end
