name "swift-storage_remove"
description "Deactivate Swift Storage Role"
run_list(
  "recipe[swift::remove_storage]"
)
default_attributes()
override_attributes()
