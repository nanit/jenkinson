require "jenkinson/version"
require 'yaml'
require 'jenkinson/api'
require 'jenkinson/cli'

module Jenkinson
  def self.configure(&block)
    yield(config)
  end

  def self.config
    @@config ||= {
      'server_url' => ENV['JENKINSON_URL'] || "localhost",
      'username' => ENV['JENKINSON_USER'],
      'password' => ENV['JENKINSON_PASSWORD']
    }
  end

  Hub = API.new(self.config)
end
