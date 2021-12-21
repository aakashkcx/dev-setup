# Development Setup

## Table of Contents

- [Development Setup](#development-setup)
  - [Table of Contents](#table-of-contents)
  - [OS](#os)
    - [Windows 10](#windows-10)
    - [Linux](#linux)
  - [Text Editors](#text-editors)
    - [Visual Studio Code](#visual-studio-code)
    - [Sublime Text](#sublime-text)
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

```powershell
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

function GDrive { Set-Location "~\My Drive\" }

function Uni { Set-Location "~\My Drive\University\" }

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
- Better Comments
- _C/C++_
- _C#_
- **Code Spell Checker**
- ES7 React/Redux/GraphQL/React-Native snippets
- ESLint
- _Extension Pack for Java_
- **GitLens — Git supercharged**
- _Haskell_
- HTML CSS Support
- **Indented Block Highlighting**
- Jupyter
- Language Support for Java(TM) by Red Hat
- Live Server
- Live Share
- Markdown All in One
- **Material Icon Theme**
- **One Dark Pro**
- Path Intellisense
- _PHP Intelephense_
- Polacode
- **Prettier - Code formatter**
- Pylance
- Python
- Rainbow CSV
- Remote - SHH
- Vetur
- Visual Studio IntelliCode
- YAML
```

- [vscode/settings.json](vscode/settings.json)

```jsonc
{
  "workbench.colorTheme": "One Dark Pro",
  "workbench.iconTheme": "material-icon-theme",
  "editor.fontFamily": "Cascadia Code, Consolas",
  "editor.fontLigatures": true,
  // "editor.fontSize": 16,
  "editor.tabSize": 2,
  "editor.formatOnSave": true,
  "editor.bracketPairColorization.enabled": true,
  "editor.guides.bracketPairs": "active",
  "editor.minimap.enabled": false,
  "editor.smoothScrolling": true,
  "editor.cursorSmoothCaretAnimation": true,
  "editor.cursorBlinking": "smooth",
  "terminal.integrated.fontFamily": "Cascadia Code, Consolas",
  "terminal.integrated.cursorStyle": "line",
  "terminal.integrated.cursorBlinking": true,

  "editor.defaultFormatter": "esbenp.prettier-vscode",

  "python.formatting.provider": "black",

  "cSpell.language": "en-GB",

  "blockhighlight.background": ["255", "255", "255", ".025"],

  "editor.suggestSelection": "first",
  "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",

  "[html]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[css]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[javascript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[typescript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[java]": { "editor.defaultFormatter": "redhat.java" },
  "[python]": { "editor.defaultFormatter": "ms-python.python" },
  "[json]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[jsonc]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[markdown]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[javascriptreact]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
  "[typescriptreact]": { "editor.defaultFormatter": "esbenp.prettier-vscode" }
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

### Sublime Text

- Add Sublime Text to PATH: `C:\Program Files\Sublime Text`.
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
      "command": "paste",
      "keys": "ctrl+v"
    },
    {
      "command": "find",
      "keys": "ctrl+shift+f"
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
      "font": {
        "face": "Cascadia Code"
      },
      "padding": "10",
      "useAcrylic": true
    },
    "list": [
      {
        "commandline": "powershell.exe",
        "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
        "name": "Windows PowerShell"
      },
      {
        "commandline": "cmd.exe",
        "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
        "name": "Command Prompt"
      },
      {
        "name": "Git Bash",
        "source": "Git",
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
