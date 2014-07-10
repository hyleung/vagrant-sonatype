node default {
  include web_server
  include nexus_server
}

class web_server {
  class { 'nginx': }
}

class nexus_server {
  class { '::java': }
  class { '::nexus':
    version =>  '2.8.0',
    revision => '05',
    nexus_root => '/srv';
  }

  Class['::java'] -> Class['::nexus']
}
