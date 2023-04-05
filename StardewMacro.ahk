#SingleInstance, Force
#IfWinActive, Stardew Valley

SleepForFrames(x)
{
    Sleep, x * 16.666
}

XButton1::

While GetKeyState("XButton1", "P")
{
    SendEvent, {LButton Down}
    SleepForFrames(1)
    SendEvent, {LButton Up}

    SleepForFrames(5) ; This value depends heavily on the actual FPS you're getting

    SendEvent, {r Down}{Delete Down}{RShift Down}
    SleepForFrames(1)
    SendEvent, {r Up}{Delete Up}{RShift Up}
}

SleepForFrames(1)
return

XButton2::

While GetKeyState("XButton2", "P")
{
    SendEvent, {RButton Down}
    SleepForFrames(1)
    SendEvent, {RButton Up}

    i = 0
    SleepForFrames(2)
    while i < 4 {
        SendEvent, {LButton Down}
        SleepForFrames(1)
        SendEvent, {LButton Up}
        i++
    }
    SleepForFrames(1)
    return
}