require: "../lib/fyzmq"

FancySpec describe: ZMQ Context with: {
  it: "creates a new ZMQ Context" with: 'new when: {
    ctx = ZMQ Context new
    ctx is_a?: ZMQ Context . is: true
  }

  it: "creates a new ZMQ Context with a given amount of IO threads" with: 'new: when: {
    ctx = ZMQ Context new: 10
    ctx is_a?: ZMQ Context . is: true
  }

  it: "closes a context" with: 'close when: {
    ctx = ZMQ Context new
    { sock = ctx socket: ZMQ PUSH } does_not raise: Exception
    ctx close
    { sock = ctx socket: ZMQ PUSH } raises: Exception
  }
}