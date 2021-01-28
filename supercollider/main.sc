//<C-e> Send current block or line
//<M-e> Send current line
//<F12> Stop
//<M-L> Clear buffer

/*
MiPlaits.ar(pitch: 60.0, engine: 0, harm: 0.1, timbre: 0.5, morph: 0.5, trigger: 0.0, level: 0, fm_mod: 0.0, timb_mod: 0.0, morph_mod: 0.0, decay: 0.5, lpg_colour: 0.5, mul: 1.0)
MiRings.ar(in: 0, trig: 0, pit: 60.0, struct: 0.25, bright: 0.5, damp: 0.7, pos: 0.25, model: 0, poly: 1, intern_exciter: 0, easteregg: 0, bypass: 0, mul: 1.0, add: 0)
*/

s.boot();
s.quit();

	Server.default.boot;

(
	var plaits;
	var plaits2;
	var pitch = 60;
	var engine = 6;
	var harm = 0.25;
	var timbre = 0.4;
	var morph = 0.6;
	var trigger = 0;
	plaits = {MiPlaits.ar(pitch, engine, harm, timbre, morph, trigger)}.play;
	plaits2 = {MiPlaits.ar(60, 11, 0.4, 0.3, morph, trigger)}.play;
	//plaits + plaits2;


)
(
	{MiPlaits.ar(60, 11, 0.2, 0.1, 0.5, 0)}.play;
	{MiPlaits.ar(57, 11, 0.2, 0.1, 0.5, 0)}.play;
	{MiPlaits.ar(64, 11, 0.3, 0.1, 0.6, 0)}.play;
	{MiPlaits.ar(67, 11, 0.4, 0.1, 0.6, 0)}.play;
	{MiPlaits.ar(71, 11, 0.4, 0.1, 0.6, 0)}.play;
	//{MiPlaits.ar(57, 11, 0.4, 0.1, 1.6, 0)}.play;
	//{MiPlaits.ar(57, 12, 0.4, 0.1, 0.6, 0)}.play;

	{MiPlaits.ar(71, 6, 0.4, 0.1, 0.6, 0)}.play;

)

play{MiRings.ar(60, 1, 1, 1, 1, 1, 1, 1, 1)}
//{ MiPlaits }

play{MiRings.ar(OnePole.ar(Mix(
	LFSaw.ar([1,0.99],[0,0.6],2000,2000).trunc([400,600])*[1,-1]
),0.98)).dup*0.1}

