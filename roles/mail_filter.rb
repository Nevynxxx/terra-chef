name "mail_filter"
description "mail filter role"
run_list ["recipe[postfix::server]"]
override_attributes(
  "postfix" => {
    "mail_type" => "master",
    "main" => {
      "mynetworks" => [ "10.3.3.0/24", "127.0.0.0/8" ],
      "inet_interfaces" => "all",
      "mydomain" => "anferny.me.uk",
      "myorigin" => "anferny.me.uk"
  }
  }
)