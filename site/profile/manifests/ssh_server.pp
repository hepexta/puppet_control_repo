class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd":
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => root,
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxuknH3ca/3zCgIs6BH3Kkqk+o04nOPnMENsEMWn3AG4yShr2/IyVRZ61BuxRiwW/DfHgnI4UWwg2cgrr2FZlOC9JFXkh4hLKbxC5fxLoyz3d7kT+e8NKwAxLZOuFVWfNJTUhMVSkEXHQPFf40tJnV5ven1/WqdndTwPYv6T/S9EBDkZYDjX/0A/AkVGezJQUCdbHdcVRfBDD6WFqyjKs/BNfoxlkuuc3oRl8KM4rdEDIUAhzSiTEpy0x+eaBae0KuvWa22dKVaK9xPsK3awfZP/Tn0bpf6fNi2KhEoTtSxzbMjtk+wTSZsGzePEFQpYrUsdhLNA/X73sUCQbpqRv3',
  }
}
