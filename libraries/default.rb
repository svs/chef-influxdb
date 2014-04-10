# libraries/influxdb.rb
#
# Author: Simple Finance <ops@simple.com>
# License: Apache License, Version 2.0
#
# Copyright 2013 Simple Finance Technology Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Helper methods for managing InfluxDB

require 'json'

module InfluxDB
  module Helpers

    # TODO : Configurable administrator creds
    def self.client(user='root', pass='root')
      require 'influxdb'
      return InfluxDB::Client.new(:username => user, :password => pass)
    end

    def self.render_config(hash, run_context)
      # require 'influxdb'
      # require 'influxdb/config'
      # f = Chef::Resource::File.new('/opt/influxdb/shared/config.json', run_context)
      # f.owner('root')
      # f.mode(00644)
      # f.content(InfluxDB::Config.new(hash).render + "\n")
      # f.run_action(:create)
      # f.notifies(:restart, 'service[influxdb]', :delayed)

      # return f
      return true
    end

  end
end
