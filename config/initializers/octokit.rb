# Provide authentication credentials
Octokit.configure do |c|
  c.login = RubyissuesApi::Application.config.github_user
  c.password = RubyissuesApi::Application.config.github_password
end
