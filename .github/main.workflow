workflow "Publish to npm" {
  on = "push"
  resolves = ["Publish"]
}

action "Filter by branch" {
  uses = "actions/bin/filter@3c0b4f0e63ea54ea5df2914b4fabf383368cd0da"
  args = "branch master"
}

action "Filter by file" {
  needs = "Filter by branch"
  uses = "nholden/modified-file-filter-action@636c671369ce2d62be68421e5d47542930992e0c"
  args = "package.json"
}

action "Publish" {
  needs = "Filter by file"
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  secrets = ["NPM_AUTH_TOKEN"]
  args = "publish"
}
