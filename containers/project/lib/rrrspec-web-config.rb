require_relative './rrrspec-config'

RRRSpec.configure(:web) do |conf|
  conf.persistence_db = PERSISTENCE_DB
  conf.execute_log_text_path = '/tmp/log_files'
end
