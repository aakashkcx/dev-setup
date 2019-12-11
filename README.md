# dev-setup

## OS

-   Windows 10
-   Windows Subsystem for Linux (WSL)

### Windows 10

-   `windows/.gitconfig`

```
[user]
	name = Aakash Kc
	email = aakashkcx@gmail.com
[core]
	editor = nano
	autocrlf = true

```

-   `windows/.gitignore`

```
node_modules/
```

### Windows Subsystem for Linux (WSL)

-   `wsl/.gitconfig`

```
[user]
	name = Aakash Kc
	email = aakashkcx@gmail.com
[core]
	editor = nano
	autocrlf = input
```

-   `windows/.gitignore`

```
node_modules/
```

## Text Editors

-   Visual Studio Code
-   Sublime Text 3

### Visual Studio Code

#### Extensions

-   Bracket Pair Colorizer
-   C/C++
-   Code Spell Checker
-   ESLint
-   Language Support for Java(TM) by Red Hat
-   Markdown All in One
-   Material Icon Theme
-   Prettier - Code formatter
-   Python
-   Remote - SHH
-   Remote - SHH: Editing Configuration Files
-   Remote - WSL
-   Visual Studio IntelliCode

#### Settings

-   `vscode/settings.json`

```json
{
    "workbench.iconTheme": "material-icon-theme",
    "editor.formatOnSave": true,
    "editor.suggestSelection": "first",
    "terminal.integrated.cursorStyle": "line",
    "terminal.integrated.cursorBlinking": true,
    "prettier.singleQuote": true,
    "prettier.tabWidth": 4
}
```

-   `vscode/keybindings.json`

```json
// Place your key bindings in this file to override the defaultsauto[]
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

-   Add Sublime Text 3 to PATH: `C:\Program Files\Sublime Text 3`
-   In a terminal type `subl <filename/folder>`

## Terminal

### Fonts

-   [Inconsolata](https://fonts.google.com/specimen/Inconsolata)
-   [Inconsolata for Powerline](https://github.com/powerline/fonts/tree/master/Inconsolata).

### Windows Terminal (Preview)

-   `windows-terminal/profiles.json`

```json
// To view the default settings, hold "alt" while clicking on the "Settings" button.
// For documentation on these settings, see: https://aka.ms/terminal-documentation

{
    "$schema": "https://aka.ms/terminal-profiles-schema",

    "defaultProfile": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",

    "profiles": [
        {
            // Make changes here to the powershell.exe profile
            "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
            "name": "Windows PowerShell",
            "commandline": "powershell.exe",
            "hidden": false,

            "colorScheme": "One Half Dark",
            "fontFace": "Inconsolata",
            "fontSize": 14,
            "useAcrylic": true,
            "acrylicOpacity": 0.75,
            "padding": "10, 10, 10, 10"
        },
        {
            // Make changes here to the cmd.exe profile
            "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
            "name": "cmd",
            "commandline": "cmd.exe",
            "hidden": false,

            "colorScheme": "Campbell",
            "fontFace": "Inconsolata",
            "fontSize": 14,
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

            "colorScheme": "One Half Dark",
            "fontFace": "Inconsolata for Powerline",
            "fontSize": 14,
            "useAcrylic": true,
            "acrylicOpacity": 0.8,
            "padding": "10, 10, 10, 10"
        },
        {
            "guid": "{2c4de342-38b7-51cf-b940-2309a097f518}",
            "hidden": false,
            "name": "Ubuntu",
            "source": "Windows.Terminal.Wsl",

            "colorScheme": "One Half Dark",
            "fontFace": "Inconsolata for Powerline",
            "fontSize": 14,
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
            "fontFace": "Inconsolata for Powerline",
            "fontSize": 14,
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

    // Add custom color schemes to this array
    "schemes": [],

    // Add any keybinding overrides to this array.
    // To unbind a default keybinding, set the command to "unbound"
    "keybindings": []
}
```
