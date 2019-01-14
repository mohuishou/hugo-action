# hugo-action

use github action with hugo

## Defaults

1. You run this actions in your blog source file repository
2. Your blog is placed in youname.github.io

## use

.github/main.workflow

```
workflow "blog ci/cd" {
  on = "push"
  resolves = ["hugo"]
}

action "hugo" {
  uses = "docker://mohuishou/hugo-action:0.53"
  secrets = ["TOKEN"]
}
```

## env

| Key   | Value             | Must |
| ----- | ----------------- | ---- |
| TOKEN | your github token | yes  |
| EMAIL | your email        | yes  |
