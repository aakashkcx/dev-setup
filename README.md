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
    - [Windows Terminal (Preview)](#windows-terminal-preview)
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

```json
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

- Add Sublime Text 3 to PATH: `C:\Program Files\Sublime Text 3`.
- In a terminal type `subl <filename/folder>`.

## Terminal

### Windows Terminal (Preview)

- [windows-terminal/settings.json](windows-terminal/settings.json)

```json
{
  "$schema": "https://aka.ms/terminal-profiles-schema",

  "defaultProfile": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",

  "copyOnSelect": false,
  "copyFormatting": false,

  "profiles": {
    "defaults": {
      "fontFace": "Cascadia Code",
      "fontSize": 13,
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

- Fira Code
  - [GitHub](https://github.com/tonsky/FiraCode)
  - [Google Fonts](https://fonts.google.com/specimen/Fira+Code)
- Cascadia Code
  - [GitHub](https://github.com/microsoft/cascadia-code)
  - [Microsoft](https://devblogs.microsoft.com/commandline/cascadia-code/)
