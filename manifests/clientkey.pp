# Install client keys for the Mcollective SSL plugin to use.
#
# == Parameters
#
# === Common Parameters
#
# [namevar]
#   The CN field of the user.
#
# == Examples
#
# Basic example:
#
#   mcollective::clientkey { "bob@mydomain.com": }
#
# == Authors
#
# Puppetlabs <info@puppetlabs.com>
#
# == Copyright
#
# Copyright 2011 Puppetlabs Inc unless otherwise noted.
#
define mcollective::clientkey (
  ) {

  file { "/etc/mcollective/ssl/clients/${name}.pem":
    content => get_pubkey($name),
    mode => "0644",
    owner => "root",
    group => "root",
  }

}
