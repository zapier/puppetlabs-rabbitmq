# sets up the vmware hosted apt repo
# requires
#   puppetlabs-apt
#   puppetlabs-stdlib
class rabbitmq::repo::apt(
  $pin = undef
) {
  apt::source { 'rabbitmq':
    location    => 'http://www.rabbitmq.com/debian/',
    release     => 'testing',
    repos       => 'main',
    include_src => false,
    key         => 'RabbitMQ Release Signing Key <info@rabbitmq.com>',
    key_source  => 'http://www.rabbitmq.com/rabbitmq-signing-key-public.asc',
    pin         => $pin,
  }
}
