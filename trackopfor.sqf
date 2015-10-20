sleep 5;

Hint format "Locals are giving reports on enemy positions to HQ!\nCheck your map for an update!";
if (isserver) then {
	markers = [];
	{	
		if ((side _x == east) AND (leader group _x == leader _x) then {
			_grp = group x;
			_grpString =  format["%1", _grp];
			_grpString = createMarker [_grpString, [getpos _x select 0,getpos _x select 1]];
			_grpString setMarkerType "mil_start";
			_grpString setMarkerPos [getpos _x select 0,getpos _x select 1];
			_markers = _markers + [_grpString];
		};
	} foreach allunits;
};	