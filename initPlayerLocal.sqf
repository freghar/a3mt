/*
 * executed on client mission load
 * https://community.bistudio.com/wiki/Event_Scripts
 *
 * also executed on jip!
 */

params ["_unit", "_jip"];

/* save loadout - even on jip as our client isn't yet initialized */
_unit call A3MT_fnc_savegear;
