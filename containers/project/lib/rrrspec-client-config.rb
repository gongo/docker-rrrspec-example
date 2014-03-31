require_relative './rrrspec-config'

RRRSpec.configure(:client) do |conf|
  conf.packaging_dir = '/opt/project/sample'

  conf.rsync_remote_path = RSYNC_REMOTE_PATH
  conf.rsync_options = RSYNC_OPTIONS

  conf.spec_files = lambda do
    Dir.chdir(conf.packaging_dir) do
      Dir['spec/**/*_spec.rb'].uniq
    end
  end

  conf.setup_command = <<-SETUP
    bundle install
  SETUP

  conf.slave_command = <<-SLAVE
    RRRSPEC_CONFIG_FILES=/opt/lib/rrrspec-client-config.rb rrrspec slave
  SLAVE

  conf.taskset_class = 'myapplication'
  conf.worker_type = 'default'
  conf.max_workers = 10
  conf.max_trials = 3
  conf.unknown_spec_timeout_sec = 8 * 60
  conf.least_timeout_sec = 60
end
