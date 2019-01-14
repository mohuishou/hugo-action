workflow "New workflow" {
  on = "push"
  resolves = [
    "hugo test",
    "actions/bin/shellcheck@master",
  ]
}

action "hugo test" {
  uses = "./"
  secrets = ["GITHUB_TOKEN"]
  args = "echo 123"
}

action "actions/bin/shellcheck@master" {
  uses = "actions/bin/shellcheck@master"
  args = "*.sh"
}
