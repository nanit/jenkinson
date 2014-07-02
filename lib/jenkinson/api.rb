require 'jenkins_api_client'
module Jenkinson
  class API
    attr_reader :client

    def initialize(config)
      @client = JenkinsApi::Client.new(config)
    end

    def create_or_update_jobs(jobs_folder)
      jobs = Dir["#{jobs_folder}/*/config.xml"]
      jobs.each do |job|
        File.open(job, "rb") do |xml_file|
          jobname = job.split('/')[-2]
          client.job.create_or_update(jobname, xml_file.read)
        end
      end
    end
  
    def get_jobs_config(target_dir)
      client.job.list_all.each do |jobname|
        job_on_server = client.job.get_config(jobname) rescue nil
        job = "#{target_dir}/#{jobname}/config.xml"
        next if job_on_server.nil?

        dirname = File.dirname(job)
        Dir.mkdir(dirname) unless Dir.exist?(dirname)

        File.open(job, "w") do |xml_file|
          xml_file << job_on_server
        end
      end
    end

    def install_plugins(plugins_str)
      plugins = plugins_str.split(',')
      plugins.each do |plugin|
        client.plugin.install(plugin)
      end
    end
  end
end
