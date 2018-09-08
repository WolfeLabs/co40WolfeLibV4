
//getAllHitPointsDamage player;
//[
//	["HitFace","HitNeck","HitHead","HitPelvis","HitAbdomen","HitDiaphragm","HitChest","HitBody","HitArms","HitHands","HitLegs"],
//	["","neck","head","pelvis","spine1","spine2","spine3","body","","hands","legs"],
//	[0,0.0939002,0.0319932,0.0858595,0.174491,1,1,0.168495,1,0.5,0.195907]
//]

_three = getAllHitPointsDamage player select 2;
    _sum=0;
	{
		_sum = _sum + _x;
	} foreach _three;
	_avg= _sum / (count _three);
	woAvg = _avg;
