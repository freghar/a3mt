/*
 * add "Hide Body" action to a corpse, sinks the body underground, despawning it
 */

params ["_corpse"];

_corpse addAction [
  "<t color='#ffa500'>Hide Body</t>",
  {
    params ["_target", "_caller"];
    hideBody _target;
    _caller playActionNow "MedicOther";
  },
  nil,
  0.1,
  true,
  true,
  "",
  "(_target distance _this) < 2"
];
