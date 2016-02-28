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
if ((_type == 2) && (local _new) && (!isNull _old) && (local _old)) then {
  _old call A3MT_fnc_savegear;
  deleteVehicle _old;
  _new call A3MT_fnc_loadgear;
};

/* if respawn on a marker was chosen, use pre-saved loadout
 * (exclude first spawn as !isNull _old - we can't check for the loadout
 *  to be [], because this handler gets called even on first spawn and
 *  *after* initPlayerLocal, which saves the loadout - restoring it here
 *  wouldn't hurt, but causes unnecessary animations and code to run)
 *  https://community.bistudio.com/wiki/Initialization_Order
 */
if ((_type == 3) && (local _new) && (!isNull _old)) then {
  _new call A3MT_fnc_loadgear;
};
