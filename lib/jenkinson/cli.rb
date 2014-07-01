require "thor"
module Jenkinson
  class CLI < Thor
    desc "set_jobs FROM_FOLDER", "create (or update) jobs from the ./jobs folder"
    def set_jobs(from = nil)
      Jenkinson::Hub.create_or_update_jobs(Dir["#{from}/*.xml"])
    end

    desc "get_jobs TARGET_FOLDER", "get jobs configurations"
    def get_jobs(target = nil)
      Jenkinson::Hub.get_jobs_config(target)
    end

    desc "install PLUGINS", "install jenkins plugins (comma separated)"
    def install(plugins = nil)
      Jenkinson::Hub.install_plugins(plugins)
    end
  end
end
