/*
 * executed on vanilla player respawn
 * https://community.bistudio.com/wiki/Arma_3_Respawn
 *
 * also called on first player spawn, watch out!
 * (_old will be objNull)
 */

params ["_new", "_old", "_type", "_delay"];

/* _type: 2 == "INSTANT" (at corpse)
 *        3 == "BASE"    (on a marker)
 */

/* if respawn on player corpse was chosen, transfer its loadout
 * to the new player and delete the corpse */
/* NOTE: doesn't work well, main weapon gets deleted with old corpse,
 *       but is not saved as gear, so the player respawns without it */
if ((_type == 2) && (!isNull _old)) then {
  _old call A3MT_fnc_savegear;
  deleteVehicle _old;
  _new call A3MT_fnc_loadgear;
};

/* if respawn on a marker was chosen, use pre-saved loadout
 * (if it was previously saved)
 */
if ((_type == 3) && (call A3MT_fnc_gearsaved)) then {
  _new call A3MT_fnc_loadgear;
};
