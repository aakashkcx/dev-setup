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

-   [windows/.gitconfig](windows/.gitconfig)

```
[user]
	name = Aakash Kc
	email = aakashkcx@gmail.com
[core]
	editor = nano
	autocrlf = true
```

-   [windows/.gitignore](windows/.gitignore)

```
node_modules/
```

-   [windows/profile.ps1](windows/profile.ps1)

### Windows Subsystem for Linux (WSL)

-   [wsl/.gitconfig](wsl/.gitconfig)

```
[user]
	name = Aakash Kc
	email = aakashkcx@gmail.com
[core]
	editor = nano
	autocrlf = input
```

-   [wsl/.gitignore](wsl/.gitignore)

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
-   GitLens — Git supercharged
-   Haskell Syntax Highlighting
-   Haskelly
-   Language Support for Java(TM) by Red Hat
-   Live Server
-   Markdown All in One
-   Material Icon Theme
-   One Dark Pro
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
    "workbench.colorTheme": "One Dark Pro",
    "workbench.iconTheme": "material-icon-theme",
    "editor.fontFamily": "Fira Code, Cascadia Code, Consolas, monospace",
    "editor.fontLigatures": true,
    "editor.fontSize": 16,
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

-   [windows-terminal/settings.json](windows-terminal/settings.json)

```json
{
    "$schema": "https://aka.ms/terminal-profiles-schema",

    "defaultProfile": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",

    "copyOnSelect": false,
    "copyFormatting": false,

    "profiles": {
        "defaults": {
            "fontFace": "Cascadia Code",
            "fontSize": 12,
            "useAcrylic": true,
            "acrylicOpacity": 0.8,
            "colorScheme": "Dark"
        },
        "list": [
            {
                "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
                "name": "Windows PowerShell",
                "commandline": "powershell.exe"
            },
            {
                "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
                "name": "Command Prompt",
                "commandline": "cmd.exe"
            },
            {
                "guid": "{2c4de342-38b7-51cf-b940-2309a097f518}",
                "name": "Ubuntu",
                "source": "Windows.Terminal.Wsl"
            },
            {
                "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
                "name": "Azure Cloud Shell",
                "source": "Windows.Terminal.Azure",
                "hidden": true
            },
            {
                "guid": "{be1b1b1d-2ffa-4e4c-bb43-9d361c040b37}",
                "name": "Git Bash",
                "commandline": "C:\\Program Files\\Git\\bin\\bash.exe",
                "icon": "C:\\Program Files\\Git\\mingw64\\share\\git\\git-for-windows.ico"
            },
            {
                "guid": "{99c3e393-ba8b-4d4c-8123-e98db4062586}",
                "name": "Warwick SSH",
                "commandline": "ssh warwick",
                "icon": "https://d36jn9qou1tztq.cloudfront.net/static_war/render/id7/images/favicon.ico"
            }
        ]
    },

    "schemes": [
        {
            "name": "Dark",
            "foreground": "#DDD",
            "background": "#222",
            "cursorColor": "#FFF",
            "black": "#000",
            "red": "#C11",
            "green": "#1A1",
            "yellow": "#CA1",
            "blue": "#26D",
            "purple": "#929",
            "cyan": "#2AA",
            "white": "#EEE",
            "brightBlack": "#666",
            "brightRed": "#F55",
            "brightGreen": "#3D3",
            "brightYellow": "#FD8",
            "brightBlue": "#69F",
            "brightPurple": "#C4C",
            "brightCyan": "#6EE",
            "brightWhite": "#FFF"
        }
    ],

    "keybindings": [
        {
            "command": { "action": "copy", "singleLine": false },
            "keys": "ctrl+c"
        },
        { "command": "paste", "keys": "ctrl+v" },
        { "command": "find", "keys": "ctrl+shift+f" },
        {
            "command": {
                "action": "splitPane",
                "split": "auto",
                "splitMode": "duplicate"
            },
            "keys": "alt+shift+d"
        }
    ]
}
```

## Fonts

-   Fira Code
    -   [GitHub](https://github.com/tonsky/FiraCode)
    -   [Google Fonts](https://fonts.google.com/specimen/Fira+Code)
-   Source Code Pro
    -   [GitHub](https://github.com/adobe-fonts/source-code-pro)
    -   [Google Fonts](https://fonts.google.com/specimen/Source+Code+Pro)
