_vehicle = _this select 0;
_unit = _this select 2;


if (player == _unit) then
{
	_vehicle removeAllEventHandlers "GetIn";
	if (time < 180) then { sleep 4; playsound "radiobroadcast"; };
};
