oh-my-posh init pwsh --config  "$env:POSH_THEMES_PATH/myTheme/cloud-context.omp.json" | Invoke-Expression

# Aliases
Set-Alias -Name touch  New-Item


# Remove Aliases
Remove-Item Alias:gcm -Force -ErrorAction SilentlyContinue
Remove-Item Alias:gc -Force -ErrorAction SilentlyContinue
Remove-Item Alias:gp -Force -ErrorAction SilentlyContinue 

# git functions
function get-gitstatus {
    git status
}
function get-gitadd {
    git add
}
function get-gitaddall {
    git add .
}
function get-gitcommit {
    git commit -m $args
}
function get-gitpull {
    git pull
}
function get-gitpushsetupstream {
    git push --set-upstream origin $(git_current_branch)
}

function get-gitrestorestaged {
    git restore --staged $args
}
function get-gitpush {
    git push
}

function get-gitclone{
    git clone
}

function get-githelp{
Write-Host "
    Alias   -> Command
    ---------------------------------------------
    ga      -> git add
    gaa     -> git add all
    gcm     -> git commit -m
    gpl     -> git pull
    gp      -> git push
    gpsup   -> git push --setupstream
    gst     -> git status
    grs     -> git restore --staged
    gc      -> git clone
    ---------------------------------------------
    "
}

# my git aliases
Set-Alias -Name ga -Value get-gitadd
Set-Alias -Name gaa -Value get-gitaddall
Set-Alias -Name gcm -Value get-gitcommit
Set-Alias -Name gpl -Value get-gitpull
Set-Alias -Name gp -Value get-gitpush
Set-Alias -Name grs -Value get-gitrestorestaged
Set-Alias -Name gpsup -Value get-gitpushsetupstream
Set-Alias -Name gst -Value get-gitstatus
Set-Alias -Name githelp -Value get-githelp
Set-Alias -Name gc -Value get-gitclone

Clear-Host