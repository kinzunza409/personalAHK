#Requires AutoHotkey v2.0

^!E::
{
    handles := WinGetList()
    titles := []
    classes := []
    for (h in handles)
    {
        title := WinGetTitle(h)
        if(title != "")
        {
            WinMoveTop, title
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