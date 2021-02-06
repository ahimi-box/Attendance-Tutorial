class AddAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    # デフォルトでは権限を持たないようdefault: falseを追加
    add_column :users, :admin, :boolean, default: false
  end
end
