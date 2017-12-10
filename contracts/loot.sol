pragma solidity ^0.4.4;

contract Loot {
  
}

// Level    - Instant level up
// XP       - Redeemable Experience.
// Gold     - A token that can be used or exchanged for:
//              Loot, Buy Heroes, and Pay for upgrades
// Refresh  - A token that can be used to reduce a hero cooldown to 0
// Revive   - Remove a loss from a hero's record
// YouthPot - Return to the previous cooldown

// Loot Weights
// Name     Roll      Total   % Chance
// Bonus    0         01      0.4  %
// XP       001-100   100     39   %
// Gold     101-150   50      19.5 %
// Refresh  151-175   25      9.8  %
// Revive   176-200   25      9.8  %
// XXX      201-225   25      9.8  %
// Rewind   226-235   10      3.9  %
//          236-245   10      3.9  %
// Level up 246-250   05      2    %
// New Hero 251-255   05      2    %

/*
enum LootItems {
  Bonus,
  XP,
  Gold,
  Refresh,
  Revive,
  XXX,
  Rewind,
  xxx,
  Levelup,
  NewHero
}
*/
