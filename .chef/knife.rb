# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "snialt"
client_key               "#{current_dir}/snialt.pem"
chef_server_url          "https://lxsistsgv79.sg.uobnet.com/organizations/uob-sis-sg"
cookbook_path            ["#{current_dir}/../cookbooks"]
