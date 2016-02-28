This respawn system uses ACE3's save/load gear functions [1] together with
arma3's native onPlayerRespawn.sqf and initPlayerLocal.sqf in mission root [2].

Use this to either load gear saved on death (although ACE3 itself has this
functionality) or save the gear on the first spawn and load after respawn
through the .sqf files mentioned above.

[1] https://github.com/acemod/ACE3/tree/master/addons/common/functions
[2] https://community.bistudio.com/wiki/Arma_3_Respawn
