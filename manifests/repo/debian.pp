# Class: jenkins::repo::debian
#
class jenkins::repo::debian ( $lts=0 )
{

  include 'jenkins::repo'

  if $jenkins::repo::lts == 0 {
    apt::source { 'jenkins':
      location    => 'http://pkg.jenkins-ci.org/debian',
      release     => 'binary/',
      repos       => '',
      key         => {
        'id'     => '150FDE3F7787E7D11EF4E12A9B7D32F2D50582E6',
        'source' => 'http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key',
      },
    }

  }
  elsif $jenkins::repo::lts == 1 {
    apt::source { 'jenkins':
      location    => 'http://pkg.jenkins-ci.org/debian-stable',
      release     => 'binary/',
      repos       => '',
      key         => {
        'id'     => '150FDE3F7787E7D11EF4E12A9B7D32F2D50582E6',
        'source' => 'http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key',
      },
    }
  }

}
