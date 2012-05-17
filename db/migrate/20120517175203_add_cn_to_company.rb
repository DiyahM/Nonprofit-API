class AddCnToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :cn_id, :integer

  end
end
