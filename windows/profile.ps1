function Prompt {

    $User = (Get-ChildItem Env:\USERNAME).Value
    $Computer = (Get-ChildItem Env:\COMPUTERNAME).Value
    $Time = Get-Date -Format "hh:mm:ss"
    $CurrentDirectory = (Get-Location).Path

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