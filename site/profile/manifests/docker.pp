class profile::docker {
  include dockeragent
  dockeragent::node { 'web_puppet': }
  dockeragent::node { 'db_puppet': }
}
