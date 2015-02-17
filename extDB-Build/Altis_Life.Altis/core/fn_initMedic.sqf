#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end","_playerPosition"];
_playerPosition = last_known_position;
life_is_alive = true;
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((FETCH_CONST(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

if (life_is_alive) then
{
	cutText ["","BLACK IN"];
	player setPos _playerPosition;
	hint format["You are still alive.  You've been spawned at your last known position."];
	if(life_firstSpawn) then {
		life_firstSpawn = false;
		player say2d "welcome";
		[] call life_fnc_welcomeNotification;
	};
	[] call life_fnc_hudSetup;
}
else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};