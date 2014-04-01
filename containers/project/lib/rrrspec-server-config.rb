require_relative './rrrspec-config'

[:server, :web].each do |type|
  RRRSpec.configure(type) do |conf|
    conf.persistence_db = PERSISTENCE_DB
    conf.execute_log_text_path = '/opt/logs'
  end
end
