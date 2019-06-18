workflow "Publish to npm" {
  on = "push"
  resolves = ["Publish"]
}

action "Filter branch" {
  uses = "actions/bin/filter@3c0b4f0e63ea54ea5df2914b4fabf383368cd0da"
  args = "branch master"
}

action "Filter file" {
  needs = "Filter branch"
  uses = "nholden/modified-file-filter-action@156112043f30743226f9988e174791d356143d65"
  args = "package.json"
}

action "Publish" {
  needs = "Filter file"
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  secrets = ["NPM_AUTH_TOKEN"]
  args = "publish"
}
