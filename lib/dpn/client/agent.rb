# Copyright (c) 2015 The Regents of the University of Michigan.
# All Rights Reserved.
# Licensed according to the terms of the Revised BSD License
# See LICENSE.md for details.

require "dpn/client/agent/configuration"
require "dpn/client/agent/connection"
require "dpn/client/agent/node"
require "dpn/client/agent/bag"
require "dpn/client/agent/replicate"

module DPN
  module Client
    class Agent
      include DPN::Client::Agent::Configuration
      include DPN::Client::Agent::Connection

      include DPN::Client::Agent::Node
      include DPN::Client::Agent::Bag
      include DPN::Client::Agent::Replicate

      def initialize(options = {})
        self.configure(options)
      end

      protected

      def paging_helper(endpoint, options)
        results = []
        paginate endpoint, options, options[:page_size] || 25 do |response|
          if response.success?
            response[:results].each do |result|
              results << result
              yield result
            end
          end
        end
        return results
      end

    end
  end
end