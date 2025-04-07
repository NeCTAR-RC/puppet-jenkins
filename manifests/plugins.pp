# Class: jenkins::plugins
#
class jenkins::plugins (
  Hash $plugin_hash = {}
) {
  create_resources('jenkins::plugin',$plugin_hash)
}
