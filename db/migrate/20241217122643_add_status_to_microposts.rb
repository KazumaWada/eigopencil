class AddStatusToMicroposts < ActiveRecord::Migration[7.0]
  def change
    add_column :microposts, :status, :integer
  end
end
