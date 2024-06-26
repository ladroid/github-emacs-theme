# Github themes for Emacs

Those themes are designed to give your Emacs editor a sleek, modern look inspired by GitHub's theme mode. Below you'll find instructions on how to install and use them.

> Old version can be found on my [gist](https://gist.github.com/ladroid/37561698c9a953d4a5231a3f9241e81d)

## Supported colorschemes

| github-emacs-theme | github-vscode-theme|
| :----------------- | :----------------- |
| github-dark        | Github Dark        |
| github-dark-dimmed | Github Dark Dimmed |
| github-light       | Github Light Theme |

## Features

* Supports the latest Emacs>=24 and features like Treesitter and LSP
* Resembles GitHub's VSCode themes
* Has Github's colorblind themes

## Requirements

* Supports the latest Emacs>=24
* True color support

## Installation

> **Warning**
> Ensure that [`autothemer`](https://github.com/jasonm23/autothemer) is installed in your system.

### Using use-package

If you use `use-package`, you can install the theme as follows:

```elisp
(use-package github-dark-dimmed-theme
  :ensure t
  :config
  (load-theme 'github-dark-dimmed t))
```

### Manual installation

1. Download the github-dark-dimmed-theme.el file from the gist.
2. Place the file in your Emacs load path. For example, you might place it in `~/.emacs.d/themes/`.
3. Add the following lines to your Emacs configuration file (`~/.emacs` or `~/.emacs.d/init.el`):

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'github-dark-dimmed t)
```
### Activation

After installing the theme, you can activate it by running the following command:

```
M-x load-theme RET github-dark-dimmed RET
```

## Customization

You can customize the theme by modifying the color palette and faces in the `github-<color-theme>-theme.el` file.

**Example**: Changing the Background Color

1. Open the github-dark-dimmed-theme.el file.
2. Locate the background-color variable within the color palette definition.
3. Change the value of background-color to your desired color.

For example to change background color:

```elisp
(background-color "#1c1f26" "#1c1f26")
```

4. Save the file and reload the theme.

## Screenshots

### Github Dark

![github-dark](https://github.com/ladroid/github-emacs-theme/assets/12819340/8761e833-d0c6-4918-8d98-20db6aaa6bf6)

### Github Dark Dimmed

![github-dimmed](https://github.com/ladroid/github-emacs-theme/assets/12819340/06d99e95-c340-4820-82f6-13c149c4c435)

### Github Light

![github-light](https://github.com/ladroid/github-emacs-theme/assets/12819340/667edfba-4b1b-42df-9460-8f58beb05a8b)

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## LICENSE

This theme is licensed under the GPL-3.0-or-later license. See the LICENSE file for details.
