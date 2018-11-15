class AddProjectNameAndDomainToExtManagementSystem < ActiveRecord::Migration[5.0]
  class ExtManagementSystem < ActiveRecord::Base
    self.inheritance_column = :_type_disabled
  end

  def change
    add_column :ext_management_systems, :project_name, :string
    add_column :ext_management_systems, :domain_name, :string

    say_with_time('Setting ExtManagementSystem.project_name to project_name') do
      ExtManagementSystem.update_all(:project_name => 'project_name')
    end
    say_with_time('Setting ExtManagementSystem.domain_name to domain_name') do
      ExtManagementSystem.update_all(:domain_name => 'domain_name')
    end
  end
end
