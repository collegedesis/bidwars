class AddTwitterToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :twitter, :string
  end
end
