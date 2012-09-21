class rsyslog::filelog{

  file { '/etc/rsyslog.d':
    ensure => 'directory',
    group  => '0',
    mode   => '0755',
    owner  => '0',
  }

  file { '/etc/rsyslog.d/00file-log.conf':
    ensure  => 'file',
    content => '$ModLoad imfile',
    group   => '0',
    mode    => '0644',
    owner   => '0',
  }
}
