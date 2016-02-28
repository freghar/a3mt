/*
 * save all player loadout in a global variable
 * (still local to this client, not broadcasted)
 */

params ["_unit"];

A3MT_saved_player_loadout = _unit call ace_common_fnc_getAllGear;
