define rsyslog::shiplog($filename,$inputfiletag){



  file { "/etc/rsyslog.d/${name}.conf":
    ensure  => 'file',
    content => template('rsyslog/shiplog.conf.erb'),
    group   => '0',
    mode    => '0644',
    owner   => '0',
    notify  => Service['rsyslog'],
    require => Class['rsyslog::filelog']
  }

}
