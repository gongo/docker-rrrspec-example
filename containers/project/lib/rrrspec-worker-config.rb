require_relative './rrrspec-config'

RRRSpec.configure(:worker) do |conf|
  conf.working_dir = '/mnt/working'
  conf.worker_type = 'default'

  conf.rsync_remote_path = RSYNC_REMOTE_PATH
  conf.rsync_options = RSYNC_OPTIONS
end
