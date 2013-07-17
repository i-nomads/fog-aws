module Fog
  module Compute
    class RackspaceV2
      class Real

        # Requests a new keypair to be created
        #
        # ==== Parameters
        # * name<~String> - name to give new key
        #
        # ==== Returns
        # * response<~Excon::Response>:
        #   * keypair<~Hash>:
        #     * 'fingerprint'<~String>: 
        #     * 'name'<~String>: 
        #     * 'private_key'<~String>: 
        #     * 'public_key'<~String>: 
        #     * 'user_id'<~String>: 
        def create_keypair(name, public_key=nil)
          data = {
            'keypair' => {
              'name' => name
            }
          }

          request(
            :method   => 'POST',
            :expects  => 200,
            :path     => '/os-keypairs',
            :body     => Fog::JSON.encode(data)
          )
        end
      end
    end
  end
end
