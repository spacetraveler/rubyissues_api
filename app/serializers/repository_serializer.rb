class RepositorySerializer < ActiveModel::Serializer
  attributes :id, :full_name, :homepage, :description, :avatar_url, :html_url
end
