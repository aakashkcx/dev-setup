# Cache static session info once on startup for speed
$IsAdminSession = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
$UserAtHost = "$([Environment]::UserName)@$([Environment]::MachineName)"

# Symbols defined via char codes for encoding safety
$AdminSymbol = [char]0x2605 # ★
$PromptArrow = [char]0x276F # ❯

function Prompt {
  # Capture last command status immediately
  $LastSuccess = $?

  # Shorten home directory to ~
  $CurrentPath = $ExecutionContext.SessionState.Path.CurrentLocation.Path
  if ($CurrentPath.StartsWith($HOME, [System.StringComparison]::OrdinalIgnoreCase)) {
    $CurrentPath = "~" + $CurrentPath.Substring($HOME.Length)
  }

  # Window title: Path first, bar separator, then PowerShell
  $Host.UI.RawUI.WindowTitle = "$CurrentPath | PowerShell"

  # Top line: [★] User@Computer dd/MM/yy hh:mm:ss tt Path (branch*)
  Write-Host ""
  if ($IsAdminSession) {
    Write-Host "$AdminSymbol " -NoNewline -ForegroundColor DarkYellow
  }

  # 1. User@Computer (Red)
  Write-Host "$UserAtHost " -NoNewline -ForegroundColor Red

  # 2. Date and 12-hour Time without brackets
  Write-Host "$(Get-Date -Format 'dd/MM/yy hh:mm:ss tt') " -NoNewline -ForegroundColor DarkGray

  # 3. Current Path
  Write-Host $CurrentPath -NoNewline -ForegroundColor Yellow

  # 4. Simple Git status: Green (branch) when clean, Yellow (branch*) when dirty
  if (Get-Command git -ErrorAction SilentlyContinue) {
    $Branch = git branch --show-current 2>$null
    if ($Branch) {
      $IsDirty = [bool](git status --porcelain 2>$null)
      if ($IsDirty) {
        Write-Host " ($Branch*)" -NoNewline -ForegroundColor DarkYellow
      }
      else {
        Write-Host " ($Branch)" -NoNewline -ForegroundColor Green
      }
    }
  }

  # Bottom line: Single-character prompt symbol (Green = ok, Red = error)
  Write-Host ""
  $ArrowColor = if ($LastSuccess) { "Green" } else { "Red" }
  Write-Host $PromptArrow -NoNewline -ForegroundColor $ArrowColor

  return " "
}

function Drive { 
  Set-Location "~\My Drive\" 
}