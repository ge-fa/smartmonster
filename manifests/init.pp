class smartmonster {
  file { '/usr/local/sbin/file_system_reporter.sh':
    ensure => present,
    owner  => root,
    group  => root,
    mode   => 0755,
    source => 'puppet:///modules/smartmonster/file_system_reporter.sh',
  }

  file { '/usr/local/sbin/update_power_counter.sh':
    ensure => present,
    owner  => root,
    group  => root,
    mode   => '0755',
    source => 'puppet:///modules/smartmonster/update_power_counter.sh',
  }

  file { '/etc/pm/sleep.d/99_smartmonster_sleep.d.sh':
    ensure => present,
    owner  => root,
    group  => root,
    mode   => '0755',
    source => 'puppet:///modules/smartmonster/99_smartmonster_sleep.d.sh',
  }

  package { 'md5deep':
    ensure => $operatingsystem ? {
      'Debian' => installed,
       default => undef,
    },
  }
}
