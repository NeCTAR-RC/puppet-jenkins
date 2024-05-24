# Class: jenkins::repo::debian
#
class jenkins::repo::debian ( $lts=0 )
{

  include 'jenkins::repo'

  if $jenkins::repo::lts == 0 {
    apt::source { 'jenkins':
      location => 'http://pkg.jenkins-ci.org/debian',
      release  => 'binary/',
      repos    => '',
      key      => {
        'id'     => '62A9756BFD780C377CF24BA8FCEF32E745F2C3D5',
        'source' => 'http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key',
      },
    }

  }
  elsif $jenkins::repo::lts == 1 {
    apt::source { 'jenkins':
      location => 'http://pkg.jenkins-ci.org/debian-stable',
      release  => 'binary/',
      repos    => '',
      key      => {
        'id'     => '62A9756BFD780C377CF24BA8FCEF32E745F2C3D5',
        'source' => 'http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key',
      },
    }
  }

}
