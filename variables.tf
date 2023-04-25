variable "team_name" {
  type = string
}

variable "team_members" {
  type        = string
  description = "Comma separated list of emails"
  validation {
    condition = length(
      regexall("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$",
      var.team_members)
    ) == length(split(",", var.team_members))
    error_message = "Email list must contain only valid email addresses."
  }
}
