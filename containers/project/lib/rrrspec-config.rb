require 'uri'
RRRSpec.configure do |conf|
  Time.zone_default = Time.find_zone('Asia/Tokyo')
  url = URI.split(ENV['CACHE_PORT'])
  conf.redis = {host: url[2], port: url[3]}
end

RSYNC_REMOTE_PATH = '/opt/rsyncdir'
RSYNC_OPTIONS = %w(
  --compress
  --times
  --recursive
  --links
  --perms
  --inplace
  --delete
).join(' ')

PERSISTENCE_DB = {
  adapter: 'mysql2',
  encoding: 'utf8mb4',
  charset: 'utf8mb4',
  collation: 'utf8mb4_general_ci',
  reconnect: false,
  database: 'rrrspec',
  pool: 5,
  host: ENV['DB_PORT_3306_TCP_ADDR'],
  port: ENV['DB_PORT_3306_TCP_PORT']
}
