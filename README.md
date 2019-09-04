# @chrisdothtml/eslint-config

[![chrisdothtml code style](https://img.shields.io/badge/code_style-chrisdothtml-brightgreen.svg)](https://github.com/chrisdothtml/eslint-config)

> My personal linting preferences

 Mostly based on Standard JS. Not made to be inherited by other eslint configs. Made to be a simple install that includes prettier and easily integrates with [vscode-eslint](https://github.com/Microsoft/vscode-eslint)

## Use

```sh
yarn add --dev eslint @chrisdothtml/eslint-config &&\
printf '{\n  "root": true,\n  "extends": "@chrisdothtml"\n}\n' > .eslintrc
```

### Configure vscode

**.vscode/extensions.json**

```jsonc
{
  "recommendations": [
    "dbaeumer.vscode-eslint",
  ],
}
```

**.vscode/settings.json**

```jsonc
{
  "eslint.autoFixOnSave": true,
  "eslint.validate": [
    "javascript",
    "javascriptreact",
    // required for autoFix to work in markdown files
    { "language": "markdown", "autoFix": true },
  ],
  "javascript.format.enable": false,
  "javascript.validate.enable": false,
}
```

## Badge

```md
[![chrisdothtml code style](https://img.shields.io/badge/code_style-chrisdothtml-brightgreen.svg)](https://github.com/chrisdothtml/eslint-config)
```
