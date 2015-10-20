_obj = _this select 0;
_man = _this select 1;
_index = _this select 2;

_obj removeAction _index;
sleep 10;
deletevehicle _obj