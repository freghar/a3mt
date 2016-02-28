/*
 * turn street (and other) lights on/off in a given radius
 * around a specified source object
 */

params ["_state", "_src", "_radius"];

private "_damage";
if (_state) then { _damage = 0; } else { _damage = 0.97; };

{
  _x setHit ["light_1_hitpoint", _damage];
  _x setHit ["light_2_hitpoint", _damage];
  _x setHit ["light_3_hitpoint", _damage];
  _x setHit ["light_4_hitpoint", _damage];
} forEach nearestObjects [_src, [
  "Lamps_base_F",
  "PowerLines_base_F",
  "PowerLines_Small_base_F"
], _radius];
