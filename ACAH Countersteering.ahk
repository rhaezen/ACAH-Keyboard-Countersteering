
#Requires AutoHotkey v2.0
#SingleInstance Force

counterMs := 45
pollMs := 5

pitchBusy := false
rollBusy := false

; ARFAGEM: W <-> S
$~w up::CounterMove("s", "pitch")
$~s up::CounterMove("w", "pitch")

; ROLAGEM: A <-> D
$~a up::CounterMove("d", "roll")
$~d up::CounterMove("a", "roll")

CounterMove(key, axis)
{
    global counterMs, pollMs
    global pitchBusy, rollBusy

    if (axis = "pitch")
    {
        if (pitchBusy || GetKeyState(key, "P"))
            return
        pitchBusy := true
    }
    else
    {
        if (rollBusy || GetKeyState(key, "P"))
            return
        rollBusy := true
    }

    handedOff := false

    try
    {
        SendEvent "{" key " down}"

        startTime := A_TickCount

        while (A_TickCount - startTime < counterMs)
        {
            ; Detecta se o jogador assumiu o comando
            if GetKeyState(key, "P")
            {
                handedOff := true
                break
            }

            Sleep pollMs
        }

        ; Só libera se o jogador não assumiu a tecla
        if !handedOff
            SendEvent "{" key " up}"
    }
    finally
    {
        if (axis = "pitch")
            pitchBusy := false
        else
            rollBusy := false
    }
}

