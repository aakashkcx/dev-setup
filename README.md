# Development Setup

## Table of Contents

- [Development Setup](#development-setup)
  - [Table of Contents](#table-of-contents)
  - [OS](#os)
    - [Windows 10](#windows-10)
    - [Linux](#linux)
  - [Text Editors](#text-editors)
    - [Visual Studio Code](#visual-studio-code)
    - [Sublime Text 3](#sublime-text-3)
  - [Terminal](#terminal)
    - [Windows Terminal](#windows-terminal)
  - [Fonts](#fonts)

## OS

### Windows 10

- [windows/.gitconfig](windows/.gitconfig)

```
[user]
	name = Aakash Kc
	email = aakashkcx@gmail.com
[core]
	autocrlf = true
[color]
	ui = true
```

- [windows/profile.ps1](windows/profile.ps1)

```
function Prompt {

  $User = (Get-ChildItem Env:\USERNAME).Value
  $Computer = (Get-ChildItem Env:\COMPUTERNAME).Value
  $Time = Get-Date -Format "hh:mm:ss"
  $CurrentDirectory = (Get-Location).Path.Replace($HOME,'~')

  WRITE-HOST $User -NoNewLine -ForegroundColor Red
  WRITE-HOST "@" -NoNewLine -ForegroundColor Red
  WRITE-HOST $Computer -NoNewLine -ForegroundColor Red
  WRITE-HOST " " -NoNewLine
  WRITE-HOST $Time -NoNewLine -ForegroundColor Gray
  WRITE-HOST " " -NoNewLine
  WRITE-HOST $CurrentDirectory -NoNewLine -ForegroundColor Yellow
  WRITE-HOST
  WRITE-HOST ">" -NoNewLine

  Return " "

}

function GDrive { Set-Location "~\Google Drive\" }

function Uni { Set-Location "~\Google Drive\University\" }

function ll { ls.exe -AFhl }

function lsl { ls.exe -AFhl | less.exe }
```

### Linux

- [linux/.gitconfig](linux/.gitconfig)

```
[user]
	name = Aakash Kc
	email = aakashkcx@gmail.com
[core]
	autocrlf = input
[color]
	ui = true
```

- [linux/.bashrc](linux/.bashrc)

```bash
# Aliases
alias ll='ls -AFhl'
alias lsl='ls -AFhl | less'

# Colors
RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
MAGENTA="\[\e[35m\]"
CYAN="\[\e[36m\]"
WHITE="\[\e[37m\]"

# Prompt
# PS1="\u@\h \T \w\n$ "
# PS1="${RESET}${BOLD}\u@\h ${RESET}\T ${BOLD}\w\n${RESET}$ "
PS1="${RESET}${BOLD}${RED}\u@\h ${RESET}${WHITE}\T ${BOLD}${YELLOW}\w\n${RESET}$ "
```

## Text Editors

- [Visual Studio Code](https://code.visualstudio.com/)
- [Sublime Text 3](https://www.sublimetext.com/)
- [Notepad++](https://notepad-plus-plus.org/)

### Visual Studio Code

- [vscode/extensions.md](vscode/extensions.md)

```markdown
- Auto Close Tag
- Auto Rename Tag
- **Bracket Pair Colorizer 2**
- C/C++
- C#
- **Code Spell Checker**
- ES7 React/Redux/GraphQL/React-Native snippets
- ESLint
- Extension Pack for Java
- **GitLens — Git supercharged**
- Haskell
- HTML CSS Support
- Indented Block Highlighting
- Live Sass Compiler
- Live Server
- Live Share
- Markdown All in One
- **Material Icon Theme**
- **One Dark Pro**
- PHP Intelephense
- Polacode
- **Prettier - Code formatter**
- Python
- Remote - SHH
- Vetur
- Visual Studio IntelliCode
```

- [vscode/settings.json](vscode/settings.json)

```jsonc
{
  "workbench.colorTheme": "One Dark Pro",
  "workbench.iconTheme": "material-icon-theme",
  "editor.fontFamily": "Fira Code, Consolas",
  "editor.fontLigatures": true,
  "editor.fontSize": 16,
  "editor.tabSize": 2,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "editor.suggestSelection": "first",
  "editor.minimap.enabled": false,
  "terminal.integrated.fontFamily": "Cascadia Code, Consolas",
  "terminal.integrated.cursorStyle": "line",
  "terminal.integrated.cursorBlinking": true,

  "java.semanticHighlighting.enabled": true,
  "java.configuration.checkProjectSettingsExclusions": false,

  "python.formatting.provider": "black",
  "python.pythonPath": "C:\\Program Files\\Python39\\python.exe",
  "python.defaultInterpreterPath": "C:\\Program Files\\Python39\\python.exe",

  "blockhighlight.background": ["150", "150", "150", ".05"],

  "cSpell.language": "en-GB",

  "git.ignoreLegacyWarning": true,
  "remote.SSH.remotePlatform": {
    "warwick": "linux"
  },

  "[html]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[css]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[javascript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[typescript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[java]": { "editor.defaultFormatter": "redhat.java" },
  "[python]": { "editor.defaultFormatter": "ms-python.python" },
  "[json]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[jsonc]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[javascriptreact]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[typescriptreact]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[markdown]": { "editor.defaultFormatter": "esbenp.prettier-vscode" }
}
```

- [vscode/keybindings.json](vscode/keybindings.json)

```jsonc
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

- Add Sublime Text 3 to PATH: `C:\Program Files\Sublime Text 3`.
- In a terminal type `subl <filename/folder>`.

## Terminal

### Windows Terminal

- [windows-terminal/settings.json](windows-terminal/settings.json)

```jsonc
{
  "$schema": "https://aka.ms/terminal-profiles-schema",
  "actions": [
    {
      "command": {
        "action": "copy",
        "singleLine": false
      },
      "keys": "ctrl+c"
    },
    {
      "command": "find",
      "keys": "ctrl+shift+f"
    },
    {
      "command": "paste",
      "keys": "ctrl+v"
    },
    {
      "command": {
        "action": "splitPane",
        "split": "auto",
        "splitMode": "duplicate"
      },
      "keys": "alt+shift+d"
    }
  ],
  "copyFormatting": "none",
  "copyOnSelect": false,
  "defaultProfile": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
  "profiles": {
    "defaults": {
      "acrylicOpacity": 0.75,
      "colorScheme": "Dark",
      "fontSize": 13,
      "padding": "10",
      "useAcrylic": true
    },
    "list": [
      {
        "commandline": "powershell.exe",
        "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
        "hidden": false,
        "name": "Windows PowerShell"
      },
      {
        "commandline": "cmd.exe",
        "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
        "hidden": false,
        "name": "Command Prompt"
      },
      {
        "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
        "hidden": true,
        "name": "Azure Cloud Shell",
        "source": "Windows.Terminal.Azure"
      },
      {
        "commandline": "C:\\Program Files\\Git\\bin\\bash.exe",
        "icon": "C:\\Program Files\\Git\\mingw64\\share\\git\\git-for-windows.ico",
        "name": "Git Bash",
        "startingDirectory": "%USERPROFILE%",
        "suppressApplicationTitle": true
      },
      {
        "commandline": "ssh warwick",
        "icon": "https://d36jn9qou1tztq.cloudfront.net/static_war/render/id7/images/favicon-96x96.png",
        "name": "Warwick SSH",
        "suppressApplicationTitle": true
      }
    ]
  },
  "schemes": [
    {
      "background": "#111111",
      "black": "#000000",
      "blue": "#2266DD",
      "brightBlack": "#666666",
      "brightBlue": "#6699FF",
      "brightCyan": "#66EEEE",
      "brightGreen": "#33DD33",
      "brightPurple": "#CC44CC",
      "brightRed": "#FF5555",
      "brightWhite": "#FFFFFF",
      "brightYellow": "#FFDD88",
      "cursorColor": "#FFFFFF",
      "cyan": "#22AAAA",
      "foreground": "#DDDDDD",
      "green": "#11AA11",
      "name": "Dark",
      "purple": "#992299",
      "red": "#CC1111",
      "selectionBackground": "#FFFFFF",
      "white": "#EEEEEE",
      "yellow": "#CCAA11"
    }
  ],
  "tabSwitcherMode": "disabled"
}
```

## Fonts

- Fira Code
  - [GitHub](https://github.com/tonsky/FiraCode)
  - [Google Fonts](https://fonts.google.com/specimen/Fira+Code)
- Cascadia Code
  - [GitHub](https://github.com/microsoft/cascadia-code)
  - [Microsoft](https://devblogs.microsoft.com/commandline/cascadia-code/)
