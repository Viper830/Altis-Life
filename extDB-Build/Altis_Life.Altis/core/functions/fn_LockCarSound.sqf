/*
	File: fn_LockCarSound.sqf
      Credit: Alucard_Voss, http://www.altisliferpg.com/topic/31-vehicle-lockunlock-sounds/page-3#entry2703
*/
private["_source"];
_source = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _source) exitWith {};
_source say3D "car_lock";