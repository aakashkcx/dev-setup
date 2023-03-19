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