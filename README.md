# ACAH Keyboard Countersteering

An AutoHotkey script that adds automatic countersteering to keyboard flight controls in **Ace Combat: Assault Horizon**.

## About

When using keyboard controls, releasing a directional key may not immediately stop the aircraft's rotation. This script attempts to reduce that unwanted momentum by briefly applying the opposite input whenever a flight-control key is released.

The goal is to make keyboard flight controls feel more responsive and easier to manage, without changing the game's flight mode.

## Features

- Automatic countersteering on both pitch and roll axes.
- Works with the default WASD flight controls.
- Detects when the player manually presses the opposite key and yields control.
- Adjustable countersteering duration.
- Lightweight AutoHotkey script.

## Controls

| Key released | Automatic counter-input |
|---|---|
| W | S |
| S | W |
| A | D |
| D | A |

## Requirements

- Windows
- [AutoHotkey v2.0](https://www.autohotkey.com/)

## Installation

1. Install AutoHotkey v2.0.
2. Download `ACAH Countersteering.ahk` from this repository.
3. Run the script.
4. Launch Ace Combat: Assault Horizon.

To stop the script, right-click its AutoHotkey tray icon and select **Exit**.

## Configuration

Open the `.ahk` file in a text editor.

The main parameters are:

```autohotkey
counterMs := 45
pollMs := 5
```

- `counterMs`: duration of the automatic counter-input, in milliseconds.
- `pollMs`: interval used to check whether the player has manually taken over the opposite input.

The default values are experimental and may need adjustment depending on the system and individual preference.

## Notes

This is an experimental community utility, not an official modification.

It was developed and tested on a personal setup. Results may vary depending on hardware, game configuration, and input handling.

The script does not modify game files.

## Feedback

Suggestions, bug reports, and compatibility feedback are welcome. If you try it, please share your experience!
