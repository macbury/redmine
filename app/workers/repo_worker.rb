class RepoWorker
  include Sidekiq::Worker

  def perform(name, count)
    Repository.fetch_changesets
  end
end
