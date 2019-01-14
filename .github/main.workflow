workflow "New workflow" {
  on = "push"
  resolves = ["hugo test"]
}

action "hugo test" {
  uses = "./"
  secrets = ["GITHUB_TOKEN"]
  args = "echo 123"
}
