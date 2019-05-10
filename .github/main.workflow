workflow "Publish to npm" {
  on = "push"
  resolves = ["Publish"]
}

action "Filter" {
  uses = "actions/bin/filter@3c0b4f0e63ea54ea5df2914b4fabf383368cd0da"
  args = "branch master"
}

action "Publish" {
  needs = "Filter"
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  secrets = ["NPM_AUTH_TOKEN"]
  args = "publish"
}
