resource = "swift"
main_role = "proxy"
role_name = "#{resource}-#{main_role}"

unless node["roles"].include?(role_name)
  barclamp_role role_name do
    service_name node[resource][main_role]["service_name"]
    action :remove
  end

  # delete all attributes from node
  node.delete(resource) unless node["roles"].include?("#{resource}-storage_remove")

  node.save
end
