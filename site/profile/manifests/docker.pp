class profile::docker {
  include docker
  docker::node { 'web_puppet': }
  docker::node { 'db_puppet': }
}
