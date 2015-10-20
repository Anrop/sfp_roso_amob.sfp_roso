//Common init
if (!ismultiplayer) then {
	subdebug = true;
};
sub_units_at_gpl = [];

skiptime (((paramsArray select 0) - daytime + 24) % 24);

//Server init
if (isserver) then {

	{
		if (side _x == east) then {
			_x unassignItem "NVGoggles";
			_x removeItem "NVGoggles";
			_x setSkill ["aimingShake",0.05];
			_x setSkill ["aimingAccuracy",0.1];
			_x setUnitPos "up";
		};
	} foreach allunits;
	_ammocrates = [] execVM "ammocrates.sqf";
};

//player init
waituntil {alive player};
if (local player) then {
	[]execvm "briefing.sqf";
	removeAllItems player;
	player removeitem "ItemRadio";
	player removeitem "NVGoggles";
	removeAllWeapons player;
	removeUniform player; 
	_uniform = ["U_BG_Guerilla1_1","U_BG_Guerilla3_1", "U_BG_Guerilla2_3", "U_BG_Guerilla3_2"] select floor (random 3.9);
	player addUniform _uniform;
	removeVest player;
	removeHeadgear player;
	player additem "ItemMap";

	player addEventHandler ["killed",{_this execVM "respawn.sqf"}];
	_startloc = getpos player;
	Hint "Check the map for starting position before you leave";
	_marker = createMarkerLocal [vehicleVarName player, position player];
	_marker setMarkerTypeLocal "mil_start";
	_marker setMarkerTextLocal "Your home.";
	waituntil {player distance _startloc > 10};
	deletemarkerlocal _marker;
	["A-mob made by Subroc",0.3,0.8,4,2] spawn bis_fnc_dynamictext;
};