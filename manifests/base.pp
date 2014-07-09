node default {
  include web
}

class web {
  class { 'nginx': }
}
