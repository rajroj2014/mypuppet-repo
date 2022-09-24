class profile::docker {
  include 'docker'
  docker::image { 'ubuntu':
  image_tag => 'trusty',
  }
}
