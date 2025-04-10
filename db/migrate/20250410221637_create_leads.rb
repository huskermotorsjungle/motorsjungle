class CreateLeads < ActiveRecord::Migration[7.1]
  def change
    create_table :leads do |t|
      t.string :email
      t.string :category

      t.timestamps
    end
  end
end
