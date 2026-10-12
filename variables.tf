variable "git_repositories_lookup" {
  description = <<EOT
Map of git_repositories_lookup, attributes below
Optional:
    - like
    - with_describe
    - in (block):
        - account (optional)
        - database (optional)
        - schema (optional)
    - limit (block):
        - from (optional)
        - rows (required)
EOT

  type = map(object({
    like          = optional(string)
    with_describe = optional(bool)
    in = optional(object({
      account  = optional(bool)
      database = optional(string)
      schema   = optional(string)
    }))
    limit = optional(object({
      from = optional(string)
      rows = number
    }))
  }))
}

