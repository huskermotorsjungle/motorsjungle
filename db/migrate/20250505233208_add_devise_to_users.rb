class AddDeviseToUsers < ActiveRecord::Migration[7.1]
  def up
    unless column_exists?(:users, :account_type)
      add_column :users,
                 :account_type,
                 :string,
                 null: false,
                 default: "Private Seller"
    end
  end

  def down
    remove_column :users, :account_type if column_exists?(:users, :account_type)
  end
end
