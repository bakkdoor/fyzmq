class ZMQ Socket {
  ruby_alias: 'close
  ruby_alias: 'recv

  def bind: endpoint {
    bind(endpoint)
  }

  def connect: endpoint {
    connect(endpoint)
  }

  def getsockopt: option {
    getsockopt(option)
  }

  def setsockopt: option value: value {
    setsockopt(option, value)
  }

  def recv: flags {
    recv(flags)
  }

  def send: message flags: flags (0) {
    send(message, flags)
  }
}