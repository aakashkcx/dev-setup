# Development Setup

## Table of Contents

-   [OS](#os)
    -   [Windows 10](#windows-10)
    -   [Windows Subsystem for Linux (WSL)](#windows-subsystem-for-linux-wsl)
-   [Text Editors](#text-editors)
    -   [Visual Studio Code](#visual-studio-code)
    -   [Sublime Text 3](#sublime-text-3)
-   [Terminal](#terminal)
    -   [Fonts](#fonts)
    -   [Windows Terminal (Preview)](#windows-terminal-preview)
-   [Fonts](#fonts)

## OS

-   Windows 10
-   Windows Subsystem for Linux (WSL)

### Windows 10

```
[user]
	name = Aakash Kc
	email = aakashkcx@gmail.com
[core]
	editor = nano
	autocrlf = true

```

```

```

### Windows Subsystem for Linux (WSL)

```
[user]
	name = Aakash Kc
	email = aakashkcx@gmail.com
[core]
	editor = nano
	autocrlf = input
```

```
node_modules/
```

## Text Editors

-   Visual Studio Code
-   Sublime Text 3

### Visual Studio Code

-   [vscode/extensions.md](vscode/extensions.md)

```markdown
-   Bracket Pair Colorizer 2
-   C/C++
-   Code Spell Checker
-   ESLint
-   Haskell Syntax Highlighting
-   Haskelly
-   Language Support for Java(TM) by Red Hat
-   Live Server
-   Markdown All in One
-   Material Icon Theme
-   Prettier - Code formatter
-   Python
-   Remote - SHH
-   Remote - SHH: Editing Configuration Files
-   Remote - WSL
-   Visual Studio IntelliCode
```

-   [vscode/settings.json](vscode/settings.json)

```json
{
    "workbench.iconTheme": "material-icon-theme",
    "editor.fontFamily": "Fira Code, Source Code Pro, Consolas, monospace",
    "editor.fontLigatures": true,
    "editor.fontSize": 14,
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true,
    "editor.suggestSelection": "first",
    "terminal.integrated.cursorStyle": "line",
    "terminal.integrated.cursorBlinking": true,
    "prettier.singleQuote": true,
    "prettier.tabWidth": 4
}
```

-   [vscode/keybindings.json](vscode/keybindings.json)

```json
[
    {
        "key": "ctrl+tab",
        "command": "workbench.action.nextEditor"
    },
    {
        "key": "ctrl+pagedown",
        "command": "-workbench.action.nextEditor"
    },
    {
        "key": "ctrl+shift+tab",
        "command": "workbench.action.previousEditor"
    },
    {
        "key": "ctrl+pageup",
        "command": "-workbench.action.previousEditor"
    }
]
```

### Sublime Text 3

-   Add Sublime Text 3 to PATH: `C:\Program Files\Sublime Text 3`.
-   In a terminal type `subl <filename/folder>`.

## Terminal

### Windows Terminal (Preview)

-   `windows-terminal/profiles.json`

```json
{
    "$schema": "https://aka.ms/terminal-profiles-schema",

    "defaultProfile": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",

    "initialCols": 120,
    "initialRows": 30,
    "snapToGridOnResize": true,

    "profiles": [
        {
            "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
            "name": "Windows PowerShell",
            "commandline": "powershell.exe",
            "hidden": false,

            "colorScheme": "Dark",
            "fontFace": "Fira Code",
            "fontSize": 12,
            "useAcrylic": true,
            "acrylicOpacity": 0.75,
            "padding": "10, 10, 10, 10"
        },
        {
            "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
            "name": "cmd",
            "commandline": "cmd.exe",
            "hidden": false,

            "colorScheme": "Dark",
            "fontFace": "Fira Code",
            "fontSize": 12,
            "useAcrylic": true,
            "acrylicOpacity": 0.75,
            "padding": "10, 10, 10, 10"
        },
        {
            "guid": "{be1b1b1d-2ffa-4e4c-bb43-9d361c040b37}",
            "name": "Git Bash",
            "commandline": "C:\\Program Files\\Git\\bin\\bash.exe",
            "startingDirectory": "%USERPROFILE%",
            "icon": "C:\\Program Files\\Git\\mingw64\\share\\git\\git-for-windows.ico",
            "hidden": false,

            "colorScheme": "Dark",
            "fontFace": "Fira Code",
            "fontSize": 12,
            "useAcrylic": true,
            "acrylicOpacity": 0.8,
            "padding": "10, 10, 10, 10"
        },
        {
            "guid": "{2c4de342-38b7-51cf-b940-2309a097f518}",
            "hidden": false,
            "name": "Ubuntu",
            "source": "Windows.Terminal.Wsl",

            "colorScheme": "Dark",
            "fontFace": "Fira Code",
            "fontSize": 12,
            "background": "#300a24",
            "useAcrylic": true,
            "acrylicOpacity": 0.8,
            "padding": "10, 10, 10, 10"
        },
        {
            "guid": "{04a70efe-b843-468a-a764-c6c04ba61969}",
            "hidden": false,
            "name": "Z Shell",
            "commandline": "bash -c zsh",
            "startingDirectory": "%USERPROFILE%",

            "colorScheme": "Solarized Dark",
            "fontFace": "Fira Code",
            "fontSize": 12,
            "useAcrylic": true,
            "acrylicOpacity": 0.9,
            "padding": "10, 10, 10, 10"
        },
        {
            "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
            "hidden": true,
            "name": "Azure Cloud Shell",
            "source": "Windows.Terminal.Azure"
        }
    ],

    "schemes": [
        {
            "name": "Dark",
            "foreground": "#DDD",
            "background": "#222",
            "black": "#111",
            "red": "#B11",
            "green": "#1A1",
            "yellow": "#C91",
            "blue": "#13D",
            "purple": "#92A",
            "cyan": "#29D",
            "white": "#DDD",
            "brightBlack": "#777",
            "brightRed": "#F55",
            "brightGreen": "#4D4",
            "brightYellow": "#FEA",
            "brightBlue": "#49F",
            "brightPurple": "#C4A",
            "brightCyan": "#6DF",
            "brightWhite": "#EEE"
        }
    ],

    "keybindings": []
}
```

## Fonts

-   Fira Code
    -   [GitHub](https://github.com/tonsky/FiraCode)
    -   [Google Fonts](https://fonts.google.com/specimen/Fira+Code)
-   Source Code Pro
    -   [GitHub](https://github.com/adobe-fonts/source-code-pro)
    -   [Google Fonts](https://fonts.google.com/specimen/Source+Code+Pro)
