class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :dj_id
      t.integer :competition_id
      t.text :offering

      t.timestamps
    end
  end
end
