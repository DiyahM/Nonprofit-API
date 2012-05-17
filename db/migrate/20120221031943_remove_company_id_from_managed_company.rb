class RemoveCompanyIdFromManagedCompany < ActiveRecord::Migration
  def up
    remove_column :managed_companies, :company_id
      end

  def down
    add_column :managed_companies, :company_id, :integer
  end
end
