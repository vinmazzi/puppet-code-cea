class profiles::base::ntp {

  $ntp_servers = hiera("ntp_servers")

  class {"::ntp":
    servers => $ntp_servers,
  }

}
