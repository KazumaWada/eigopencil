class AddReferenceLinkToMicroposts < ActiveRecord::Migration[8.0]
  def change
    add_column :microposts, :reference_link, :string
  end
end
