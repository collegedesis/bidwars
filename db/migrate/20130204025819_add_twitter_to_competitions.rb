class AddTwitterToCompetitions < ActiveRecord::Migration
  def change
    add_column :competitions, :twitter, :string
  end
end
