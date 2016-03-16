class RemovePostIdInComments < ActiveRecord::Migration
  def up
    remove_column :comments, :post_id
  end

  def down
    add_reference :comments, :post, index: true
  end
end
