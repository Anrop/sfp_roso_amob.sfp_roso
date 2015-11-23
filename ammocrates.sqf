_isUsingACRE = isClass(configFile >> "CfgWeapons" >> "ACRE_PRC119");
_isUsingTFAR = isClass(configFile >> "CfgWeapons" >> "tf_rf7800str");


// A
{
	clearWeaponCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	_x addWeaponCargoGlobal ["sfp_kpistm45",3];
	_x addMagazineCargoGlobal ["sfp_36Rnd_9mm_kpistm45",20];
	_x addWeaponCargoGlobal ["sfp_ak4",5];
	_x addMagazineCargoGlobal ["sfp_20Rnd_762x51_ak4",40];
	_x addWeaponCargoGlobal ["sfp_ak5",25];
	_x addMagazineCargoGlobal ["sfp_30Rnd_556x45_Stanag",100];
	_x addWeaponCargoGlobal ["sfp_ksp58",2];
	_x addMagazineCargoGlobal ["sfp_50Rnd_762x51_ksp58",20];
	_x addWeaponCargoGlobal ["sfp_ag90",1];
	_x addMagazineCargoGlobal ["sfp_10Rnd_127x99_ag90",12];
	_x addWeaponCargoGlobal ["sfp_ksp90b",2];
	_x addMagazineCargoGlobal ["sfp_200Rnd_556x45_ksp90",12];
	_x addWeaponCargoGlobal ["sfp_psg90",2];
	_x addMagazineCargoGlobal ["sfp_9Rnd_762x51_psg90_prick",12];
} foreach [a, a1, a2];

// B
{
	clearWeaponCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	_x addWeaponCargoGlobal ["sfp_grg86",2];
	_x addMagazineCargoGlobal ["sfp_grg_heat_mag",15];
	_x addMagazineCargoGlobal ["sfp_grg_he_mag",10];
	_x addMagazineCargoGlobal ["sfp_grg_smoke_mag",5];
	_x addMagazineCargoGlobal ["sfp_grg_illum_mag",5];
	_x addWeaponCargoGlobal ["sfp_rbs69",1];
	_x addMagazineCargoGlobal ["sfp_rbs69_mag",1];
	_x addWeaponCargoGlobal ["sfp_pskott86",5];
	_x addMagazineCargoGlobal ["sfp_pskott86_mag",5];
} foreach [b,b1,b2];

{
	clearWeaponCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	_x addWeaponCargoGlobal ["sfp_signpist50",5];
	_x addMagazineCargoGlobal ["sfp_1rnd_lyspatron7_mag",30];
	_x addMagazineCargoGlobal ["sfp_handgrenade_shgr56", 30];
	_x addBackpackCargoGlobal ["sfp_backpack_lk35",3];
	_x addBackpackCargoGlobal ["sfp_backpack_sjvv9",1];
	_x addMagazineCargoGlobal ["sfp_strvm5_mag", 30];

	if(_isUsingACRE) then {
		_x addItemCargoGlobal ["ACRE_PRC117F",10];
	};
	if(_isUsingTFAR) then {
		_x addItemCargoGlobal ["tf_rf7800str",10];
	};
} foreach [c,c1,c2];

{
	clearItemCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	_x addItemCargoGlobal ["sfp_m90w_uniform",20];
	_x addItemCargoGlobal ["sfp_m90w_uniform_dirty",5];
} foreach [closet_1];

{
	clearItemCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	_x addItemCargoGlobal ["sfp_m90w_helmet",25];
	_x addItemCargoGlobal ["sfp_m37_helmet",2];
	_x addItemCargoGlobal ["sfp_m37w_helmet_dok",2];
	_x addItemCargoGlobal ["sfp_m37w_helmet_dok2",2];
	_x addItemCargoGlobal ["sfp_m37w_helmet_cap1",2];
	_x addItemCargoGlobal ["sfp_m59w_cap",2];
	_x addItemCargoGlobal ["sfp_m90w_cap",2];
	_x addItemCargoGlobal ["sfp_stridssele",25];
	_x allowDamage false; 
} foreach [closet];