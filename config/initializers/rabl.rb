# config/initializers/rabl_init.rb

require 'rabl'
Rabl.configure do |config|
	config.include_json_root = false  #removes the root node (state) for each root object in the output
    config.include_child_root = false
end
