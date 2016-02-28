/*
 * load all player loadout from a global variable
 * (still local to this client, not broadcasted)
 */

params ["_unit"];

[_unit, A3MT_saved_player_loadout, true, true] call ace_common_fnc_setAllGear;
