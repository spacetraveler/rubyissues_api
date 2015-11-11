class SeedRepositoryService
  attr_reader :repository

  def initialize(repository)
    @repository = repository
    perform!
  end

  def perform!
    repo = Octokit.repo(repository.full_name)
    repository.description = repo.description
    repository.avatar_url = repo.owner.avatar_url
    repository.html_url = repo.owner.html_url
    repository.homepage = repo.homepage
    repository
  end


end
