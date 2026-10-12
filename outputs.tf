output "git_repositories_lookup_id" {
  description = "Map of id values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_git_repositories.git_repositories_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "git_repositories_lookup_git_repositories" {
  description = "Map of git_repositories values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no git_repositories are omitted"
  value       = { for k, v in data.snowflake_git_repositories.git_repositories_lookup : k => v.git_repositories if v.git_repositories != null && length(v.git_repositories) > 0 }
}
output "git_repositories_lookup_in" {
  description = "Map of in values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_git_repositories.git_repositories_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "git_repositories_lookup_like" {
  description = "Map of like values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_git_repositories.git_repositories_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "git_repositories_lookup_limit" {
  description = "Map of limit values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_git_repositories.git_repositories_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "git_repositories_lookup_with_describe" {
  description = "Map of with_describe values across all git_repositories_lookup, keyed the same as var.git_repositories_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_git_repositories.git_repositories_lookup : k => v.with_describe if v.with_describe != null }
}

