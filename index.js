module.exports = {
  env: {
    es6: true,
  },
  extends: 'standard',
  parser: 'babel-eslint',
  parserOptions: {
    ecmaFeatures: {
      jsx: true,
    },
    ecmaVersion: 2018,
    sourceType: 'module',
  },
  plugins: [
    'eslint-plugin-prettier',
    'eslint-plugin-react',
    'eslint-plugin-react-hooks',
  ],
  rules: {
    'comma-dangle': ['error', 'always-multiline'],
    'import/order': 'error',
    'react-hooks/exhaustive-deps': 'warn',
    'react-hooks/rules-of-hooks': 'error',
    'react/jsx-uses-vars': 'error',
    'react/jsx-uses-react': 'error',
    // TODO: change to 'always' if prettier/prettier#3845 is resolved
    'space-before-function-paren': ['error', {
      'anonymous': 'never',
      'named': 'never',
      'asyncArrow': 'always',
    }],
    'prettier/prettier': [
      'error',
      {
        arrowParens: 'always',
        jsxSingleQuote: true,
        semi: false,
        singleQuote: true,
        trailingComma: 'es5',
      },
    ],
  },
}
