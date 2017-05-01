CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["KIAIDCGOZS4FWWXT3KQ"],                        # required
    :aws_secret_access_key  => ENV["EywKOfx8MhVbPeBVvrV5AuYMtCtLoPHvLBNw6ZUJ"]                         # required
  }
  config.fog_directory  = ENV["mediafellow"]                     # required
end