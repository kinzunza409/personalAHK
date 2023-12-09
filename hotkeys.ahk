#Requires AutoHotkey v2.0

^!e::
{
    handles := WinGetList()
    titles := []
    classes := []
    for (h in handles)
    {
        title := WinGetTitle(h)
        if(title != "")
        {
            WinMoveTop title
            Sleep 500
        }
    }
    ListVars
}

;get list of all windows
;loop through
;   activate win
;   alt+f4
;   wait until closed


!^t:: ; open personal Todoist
{   
    Run "firefox.exe -new-window=`"https://app.todoist.com/app/filter/2343554983`""
}

!^a:: ; open agfocused windows
{
    Run "firefox.exe -new-window=`"https://app.todoist.com/app/project/2306136070`""
    Run "https://track.toggl.com/timer"
    Run "C:\Users\`"%USERNAME%`"\AppData\Local\slack\slack.exe"
}

