/*
Script: Intelpoints.sqf
Author: ZwinkaDink
Description: intel points gained from torturing captives
*/

params["_InPoints"]
_Maxintel = 1000;
_OutPoints = _OutPoints + _InPoints;
diag_log format ["[Torture Script] Intel Points Earned %1",_OutPoints];

if (_OutPoints >= _Maxintel) then  {
  _CapedIntel = true;
  diag_log format ["[Torture Script] Max Intel Gathered"];
};