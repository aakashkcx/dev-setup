# Development Setup

## Table of Contents

- [Development Setup](#development-setup)
  - [Table of Contents](#table-of-contents)
  - [Operating System](#operating-system)
    - [Windows 11](#windows-11)
    - [Linux](#linux)
  - [Text Editors](#text-editors)
    - [Visual Studio Code](#visual-studio-code)
    - [Sublime Text](#sublime-text)
  - [Terminal](#terminal)
    - [Windows Terminal](#windows-terminal)
  - [Fonts](#fonts)

## Operating System

### Windows 11

- [windows/.gitconfig](windows/.gitconfig)

  `$HOME\.gitconfig`

  ```
  [user]
  	name = <name>
  	email = <email>
  [core]
  	autocrlf = true
  [color]
  	ui = true
  [init]
  	defaultBranch = main
  ```

- [windows/profile.ps1](windows/profile.ps1)

  `$HOME\Documents\PowerShell\Profile.ps1`

  ```powershell
  function Prompt {

    $User = "$ENV:USERNAME@$ENV:USERDOMAIN"
    $Time = Get-Date -Format "dd/MM/yy hh:mm:ss tt"
    $CurrentDirectory = (Get-Location).Path.Replace($HOME,'~')

    WRITE-HOST "$User " -NoNewLine -ForegroundColor Red
    WRITE-HOST "$Time " -NoNewLine -ForegroundColor Gray
    WRITE-HOST "$CurrentDirectory" -ForegroundColor Yellow
    WRITE-HOST ">" -NoNewLine

    Return " "

  }

  function Drive { Set-Location "~\My Drive\" }
  ```

### Linux

- [linux/.gitconfig](linux/.gitconfig)

  `$HOME\.gitconfig`

  ```
  [user]
  	name = <name>
  	email = <email>
  [core]
  	autocrlf = input
  [color]
  	ui = true
  [init]
  	defaultBranch = main
  ```

- [linux/.bashrc](linux/.bashrc)

  `$HOME/.bashrc`

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
  PS1="${RESET}${BOLD}${RED}\u@\h ${RESET}${WHITE}\T ${BOLD}${YELLOW}\w\n${RESET}$ "
  ```

## Text Editors

- [Visual Studio Code](https://code.visualstudio.com/)
- [Sublime Text](https://www.sublimetext.com/)

### Visual Studio Code

- [vscode/extensions.md](vscode/extensions.md)

  ```markdown
  - [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
  - [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter)
  - [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) ❤️
  - [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens)
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - [GitHub Actions](https://marketplace.visualstudio.com/items?itemName=github.vscode-github-actions)
  - [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
  - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  - [Indented Block Highlighting](https://marketplace.visualstudio.com/items?itemName=byi8220.indented-block-highlighting) ❤️
  - [IntelliCode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)
  - [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
  - [Live Preview](https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server)
  - [Live Share](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare)
  - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
  - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) ❤️
  - [One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.material-theme) ❤️
  - [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
  - [Polacode](https://marketplace.visualstudio.com/items?itemName=pnp.polacode)
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) ❤️
  - [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
  - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv)
  - [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
  - [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
  ```

- [vscode/settings.json](vscode/settings.json)

  ```jsonc
  {
    "workbench.colorTheme": "One Dark Pro",
    "workbench.iconTheme": "material-icon-theme",
    "editor.fontFamily": "Cascadia Code, Consolas",
    "editor.fontLigatures": true,
    "editor.minimap.enabled": true,
    "editor.stickyScroll.enabled": true,
    "editor.linkedEditing": true,
    "editor.smoothScrolling": true,
    "editor.cursorSmoothCaretAnimation": "on",
    "editor.cursorBlinking": "smooth",
    "editor.bracketPairColorization.enabled": true,
    "editor.guides.bracketPairs": "active",
    "terminal.integrated.fontFamily": "Cascadia Code, Consolas",
    "terminal.integrated.cursorStyle": "line",
    "terminal.integrated.cursorBlinking": true,

    "editor.formatOnSave": true,
    "editor.tabSize": 2,
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.codeActionsOnSave": {
      "source.organizeImports": "explicit"
    },
    "notebook.formatOnSave.enabled": true,

    "[python]": { "editor.defaultFormatter": "ms-python.black-formatter" },
    "[html]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[css]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[javascript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[typescript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[json]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[jsonc]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[markdown]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[javascriptreact]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[typescriptreact]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "[astro]": { "editor.defaultFormatter": "astro-build.astro-vscode" },

    "cSpell.language": "en-GB, en",

    "blockhighlight.background": ["255", "255", "255", "0.025"]
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
    "$help": "https://aka.ms/terminal-documentation",
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
    "defaultProfile": "{574e775e-4f2a-5b96-ac1e-a2962a402336}",
    "profiles": {
      "defaults": {
        "font": {
          "face": "Cascadia Code"
        },
        "opacity": 90,
        "padding": "10",
        "useAcrylic": true
      },
      "list": [
        {
          "commandline": "%SystemRoot%\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
          "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
          "hidden": false,
          "name": "Windows PowerShell"
        },
        {
          "commandline": "%SystemRoot%\\System32\\cmd.exe",
          "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
          "hidden": false,
          "name": "Command Prompt"
        },
        {
          "guid": "{574e775e-4f2a-5b96-ac1e-a2962a402336}",
          "hidden": false,
          "name": "PowerShell",
          "source": "Windows.Terminal.PowershellCore"
        },
        {
          "guid": "{2ece5bfe-50ed-5f3a-ab87-5cd4baafed2b}",
          "hidden": false,
          "name": "Git Bash",
          "source": "Git",
          "suppressApplicationTitle": true
        }
      ]
    },
    "tabSwitcherMode": "disabled",
    "useAcrylicInTabRow": true
  }
  ```

## Fonts

- Cascadia Code
  - [GitHub](https://github.com/microsoft/cascadia-code)
  - [Microsoft](https://devblogs.microsoft.com/commandline/cascadia-code/)
