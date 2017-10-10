module Kafka
  class ConnectionBuilder
    def initialize(client_id:, logger:, instrumenter:, connect_timeout:, socket_timeout:, ssl_context:, authenticator:)
      @client_id = client_id
      @logger = logger
      @instrumenter = instrumenter
      @connect_timeout = connect_timeout
      @socket_timeout = socket_timeout
      @ssl_context = ssl_context
      @authenticator = authenticator
    end

    def build_connection(host, port)
      connection = Connection.new(
        host: host,
        port: port,
        client_id: @client_id,
        connect_timeout: @connect_timeout,
        socket_timeout: @socket_timeout,
        logger: @logger,
        instrumenter: @instrumenter,
        ssl_context: @ssl_context,
        authenticator: @authenticator
      )

      connection
    end

  end
end
