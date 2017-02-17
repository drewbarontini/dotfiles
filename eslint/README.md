.eslintrc
=========

I use the [Airbnb](https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb) styleguide as the baseline for the rules, and then override them as necessary in the `.eslintrc` file.

```
npm install -g eslint eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react
```

Once you run that, you can just copy the [.eslintrc](https://github.com/drewbarontini/dotfiles/blob/master/eslint/eslintrc) into your home directory, or just install the packages globally and add it to your project directory.

After that, just run `eslint path/to/file.js` and you're good to go!
