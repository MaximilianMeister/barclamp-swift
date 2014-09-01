name "swift-proxy_remove"
description "Deactivate Swift Proxy Role"
run_list(
  "recipe[swift::remove_proxy]"
)
default_attributes()
override_attributes()
