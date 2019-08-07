consul {

    # This is the address of the Consul agent. By default, this is
    # 127.0.0.1:8500, which is the default bind and port for a local Consul
    # agent. It is not recommended that you communicate directly with a Consul
    # server, and instead communicate with the local Consul agent. There are many
    # reasons for this, most importantly the Consul agent is able to multiplex
    # connections to the Consul server and reduce the number of open HTTP
    # connections. Additionally, it provides a "well-known" IP address for which
    # clients can connect.
    address = "127.0.0.1:8500"

    # This is the ACL token to use when connecting to Consul. If you did not
    # enable ACLs on your Consul cluster, you do not need to set this option.
    #
    # This option is also available via the environment variable CONSUL_TOKEN.
    token = "b2f37c46-dd56-4b0b-84d7-60694b9f0a71"

    retry {
        # This enabled retries. Retries are enabled by default, so this is
        # redundant.
        enabled = true

        # This specifies the number of attempts to make before giving up. Each
        # attempt adds the exponential backoff sleep time. Setting this to
        # zero will implement an unlimited number of retries.
        attempts = 12

        # This is the base amount of time to sleep between retry attempts. Each
        # retry sleeps for an exponent of 2 longer than this base. For 5 retries,
        # the sleep times would be: 250ms, 500ms, 1s, 2s, then 4s.
        backoff = "250ms"

        # This is the maximum amount of time to sleep between retry attempts.
        # When max_backoff is set to zero, there is no upper limit to the
        # exponential sleep between retry attempts.
        # If max_backoff is set to 10s and backoff is set to 1s, sleep times
        # would be: 1s, 2s, 4s, 8s, 10s, 10s, ...
        max_backoff = "1m"
    }

}

# This tell Envconsul to remove any non-standard values from environment
# variable keys and replace them with underscores.
sanitize = true

# This tells Envconsul to convert environment variable keys to uppercase (which
# is more common and a bit more standard).
upcase = true

# This tells Envconsul to not include the parent processes' environment when
# launching the child process.
pristine = true

prefix {
  # This is the path of the key in Consul or Vault from which to read data.
  path = "env_test"
}