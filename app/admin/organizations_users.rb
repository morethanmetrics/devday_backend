ActiveAdmin.register OrganizationsUsers do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :organization_id, :idp_admin
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :organization_id, :idp_admin]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
