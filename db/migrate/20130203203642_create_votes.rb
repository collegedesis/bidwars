class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :bid_id
      t.string :submitted_by_ip

      t.timestamps
    end
  end
end
