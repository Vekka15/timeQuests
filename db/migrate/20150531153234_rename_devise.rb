class RenameDevise < ActiveRecord::Migration
  def change
    rename_table :models, :users
  end
end
