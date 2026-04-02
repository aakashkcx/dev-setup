# Development Setup

## Table of Contents

- [Development Setup](#development-setup)
  - [Table of Contents](#table-of-contents)
  - [Operating System](#operating-system)
    - [Windows 11](#windows-11)
  - [Text Editors](#text-editors)
    - [Visual Studio Code](#visual-studio-code)
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
  	signingkey = ~/.ssh/id_ed25519_signing.pub
  [core]
  	autocrlf = true
  [color]
  	ui = true
  [init]
  	defaultBranch = main
  [commit]
  	gpgsign = true
  [tag]
  	gpgsign = true
  [gpg]
  	format = ssh
  [gpg "ssh"]
  	allowedSignersFile = ~/.ssh/allowed_signers
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

## Text Editors

- [Visual Studio Code](https://code.visualstudio.com/)

### Visual Studio Code

- [vscode/extensions.md](vscode/extensions.md)
  - [Astro](https://marketplace.visualstudio.com/items?itemName=astro-build.astro-vscode)
  - [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments) ❤️
  - [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) ❤️
  - [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) ❤️
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - [GitHub Actions](https://marketplace.visualstudio.com/items?itemName=github.vscode-github-actions)
  - [GitHub Copilot Chat](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat)
  - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  - [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
  - [Live Preview](https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server)
  - [Live Share](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare)
  - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
  - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) ❤️
  - [One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.material-theme) ❤️
  - [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
  - [Polacode](https://marketplace.visualstudio.com/items?itemName=pnp.polacode)
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) ❤️
  - [Pretty TypeScript Errors](https://marketplace.visualstudio.com/items?itemName=yoavbls.pretty-ts-errors)
  - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
  - [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv)
  - [Ruff](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff)
  - [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
  - [Vitest](https://marketplace.visualstudio.com/items?itemName=vitest.explorer)
  - [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)

- [vscode/settings.json](vscode/settings.json)

  ```jsonc
  {
    "workbench.colorTheme": "One Dark Pro",
    "workbench.iconTheme": "material-icon-theme",
    "editor.fontFamily": "Cascadia Code, Consolas, monospace",
    "editor.fontLigatures": true,
    "editor.stickyScroll.enabled": true,
    "editor.linkedEditing": true,
    "editor.smoothScrolling": true,
    "editor.cursorSmoothCaretAnimation": "on",
    "editor.cursorBlinking": "smooth",
    "editor.bracketPairColorization.enabled": true,
    "editor.guides.bracketPairs": "active",
    "terminal.integrated.cursorStyle": "line",
    "terminal.integrated.cursorBlinking": true,

    "editor.formatOnSave": true,
    "editor.tabSize": 2,
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.codeActionsOnSave": {
      "source.organizeImports": "explicit",
    },
    "notebook.formatOnSave.enabled": true,

    "[python]": { "editor.defaultFormatter": "charliermarsh.ruff" },
    "[html]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[css]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[javascript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[typescript]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[json]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[jsonc]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[markdown]": { "editor.defaultFormatter": "esbenp.prettier-vscode" },
    "[javascriptreact]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
    },
    "[typescriptreact]": {
      "editor.defaultFormatter": "esbenp.prettier-vscode",
    },
    "[astro]": { "editor.defaultFormatter": "astro-build.astro-vscode" },

    "oneDarkPro.editorTheme": "One Dark Pro Night Flat",
    "cSpell.language": "en-GB, en",
  }
  ```

- [vscode/keybindings.json](vscode/keybindings.json)

  ```jsonc
  [
    {
      "key": "ctrl+tab",
      "command": "workbench.action.nextEditor",
    },
    {
      "key": "ctrl+pagedown",
      "command": "-workbench.action.nextEditor",
    },
    {
      "key": "ctrl+shift+tab",
      "command": "workbench.action.previousEditor",
    },
    {
      "key": "ctrl+pageup",
      "command": "-workbench.action.previousEditor",
    },
  ]
  ```

## Terminal

### Windows Terminal

- [windows-terminal/settings.json](windows-terminal/settings.json)

  ```jsonc
  {
    "$help": "https://aka.ms/terminal-documentation",
    "$schema": "https://aka.ms/terminal-profiles-schema",
    "actions": [],
    "copyFormatting": "none",
    "copyOnSelect": false,
    "defaultProfile": "{574e775e-4f2a-5b96-ac1e-a2962a402336}",
    "keybindings": [
      {
        "id": "Terminal.CopyToClipboard",
        "keys": "ctrl+c",
      },
      {
        "id": "Terminal.PasteFromClipboard",
        "keys": "ctrl+v",
      },
      {
        "id": "Terminal.DuplicatePaneAuto",
        "keys": "alt+shift+d",
      },
    ],
    "newTabMenu": [
      {
        "type": "remainingProfiles",
      },
    ],
    "profiles": {
      "defaults": {
        "font": {
          "face": "Cascadia Code",
        },
        "opacity": 90,
        "padding": "10",
        "useAcrylic": true,
      },
      "list": [
        {
          "commandline": "%SystemRoot%\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
          "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
          "hidden": false,
          "name": "Windows PowerShell",
        },
        {
          "commandline": "%SystemRoot%\\System32\\cmd.exe",
          "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
          "hidden": false,
          "name": "Command Prompt",
        },
        {
          "guid": "{574e775e-4f2a-5b96-ac1e-a2962a402336}",
          "hidden": false,
          "name": "PowerShell",
          "source": "Windows.Terminal.PowershellCore",
        },
        {
          "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
          "hidden": true,
          "name": "Azure Cloud Shell",
          "source": "Windows.Terminal.Azure",
        },
        {
          "guid": "{2ece5bfe-50ed-5f3a-ab87-5cd4baafed2b}",
          "hidden": false,
          "name": "Git Bash",
          "source": "Git",
          "suppressApplicationTitle": true,
        },
      ],
    },
    "schemes": [],
    "tabSwitcherMode": "disabled",
    "themes": [],
  }
  ```

## Fonts

- Cascadia Code
  - [GitHub](https://github.com/microsoft/cascadia-code)
  - [Microsoft](https://devblogs.microsoft.com/commandline/cascadia-code/)
