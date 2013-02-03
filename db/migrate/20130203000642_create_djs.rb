class CreateDjs < ActiveRecord::Migration
  def change
    create_table :djs do |t|
      t.string :stage_name
      t.string :full_name
      t.string :twitter
      t.string :facebook
      t.string :soundcloud

      t.timestamps
    end
  end
end
