CarrierWave.configure do |config|
  
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJJFLXZWGCJMSNGIQ',                        # required
    :aws_secret_access_key  => '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',                      # required
    :region                 => 'us-west-2'                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
    #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'imagebucket55'                     # required
  #config.fog_public     = false                                   # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}

end