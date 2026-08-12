score_time is a small data pack library for formatting scoreboard objectives into a timecode, which is great for timers. It is easy to implement, and should work for any existing scoreboards you have. Scoreboards are assumed to be in units of ticks, so a scoreboard objective with value `75250` gets converted into `01:02:42:10` if using an hours:minutes:seconds:ticks display format.

This does NOT output a string to storage; it DIRECTLY updates the scoreboard using `scoreboard players display numberformat`, so anywhere the scoreboard appears (sidebar, below nameplate) it will automatically change.

The only function you need to call is `score_time:update`, with arguments `display_format`, `player`, and `objective`. To use, run this function every time you wish for the specific objective to have its number format updated (which is typically every tick for a timer that's ticking down.) For example, putting the following commmand into a Repeating Command Block will make every player's `timer` score display as a timecode, since the function is run as every player on every tick.

```
execute as @a run function score_time:update {display_format:[hours,minutes,seconds]},player:"@s",objective:"timer"}
```

The `player` argument accepts any selector, UUID, player name, or fake player name, so if your timer object is stored in a fake player called #game_timer, you can instead run this function every tick.

```
function score_time:update {display_format:[minutes,seconds,ticks],player:"#game_time",objective:"timer"}
```

The `display_format` argument accepts an array containing any combination of `hours`, `minutes`, `seconds`, and `ticks`. Regardless of the order the arguments are submitted, the resulting order will always be the same, starting with hours, and ending with ticks. You can even do combinations such as `[minutes,ticks]`, and skip displaying the seconds.
