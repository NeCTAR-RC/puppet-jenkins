# Class: jenkins::repo::debian
#
class jenkins::repo::debian ( $lts=0 )
{

  include 'jenkins::repo'

  apt::keyring { 'jenkins.asc':
    source => 'https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key',
  }

  if $jenkins::repo::lts == 0 {
    apt::source { 'jenkins':
      location => 'https://pkg.jenkins.io/debian',
      release  => 'binary/',
      repos    => '',
      keyring  => '/etc/apt/keyrings/jenkins.asc',
    }

  }
  elsif $jenkins::repo::lts == 1 {
    apt::source { 'jenkins':
      location => 'https://pkg.jenkins.io/debian-stable',
      release  => 'binary/',
      repos    => '',
      keyring  => '/etc/apt/keyrings/jenkins.asc',
    }
  }

}
