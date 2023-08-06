class AddStatusToCookies < ActiveRecord::Migration[7.0]
  def change
    add_column :cookies, :status, :boolean, default: false
  end
end
