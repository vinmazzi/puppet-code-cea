class profiles::base::cea {

  anchor{'begin': }
    -> class {'profiles::base::ntp': } 
    -> class {'profiles::base::users': } 
  anchor{'end': }
}
