Sidekiq.configure_server do |config|
  config.redis = { namespace: 'redmine' }
end

Sidekiq::Cron::Job.create( name: 'Sync Repos', cron: '* * * * *', klass: 'RepoWorker')