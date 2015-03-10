class puppet {
  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/puppet/papply.sh',
    mode => '0755',
  }
  
  file { '/usr/local/bin/pull-updates':
    source => 'puppet:///modules/puppet/pull-updates.sh',
    mode => '0755',
  }

  file { '/home/user/.ssh/id_rsa_git_puppy':
    source => 'puppet:///modules/puppet/ubuntu.priv',
    owner => 'user',
    mode => '0600',
  }

  cron { 'run-puppet':
    ensure => 'present',
    user => 'user',
    command => '/usr/local/bin/pull-updates',
    minute => '*/10',
    hour => '*',
  }
}


