/*
 * show/hide terrain objects in a given radius around a source object
 */

params ["_state", "_src", "_radius"];

{
  _x hideObjectGlobal _state;
} forEach nearestTerrainObjects [_src, [], _radius];
