
s.quit;

//INIT BEFORE BOOTING
(
Server.internal.options.memSize = 2**20;
Server.local.options.memSize = 2**20;
Server.default = Server.local;
Server.local.options.sampleRate = 44100;
Server.internal.options.sampleRate = 44100;
)

//BOOT
(
s = Server.local; s.boot;
Server.internal.boot;
)


(
SynthDef(\result0, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs0.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps0.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases0.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result1, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs1.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps1.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases1.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result2, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs2.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps2.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases2.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result3, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs3.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps3.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases3.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result4, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs4.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps4.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases4.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result5, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs5.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps5.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases5.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result6, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs6.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps6.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases6.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result7, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs7.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps7.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases7.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result8, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs8.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps8.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases8.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;
)

//second instance
(
SynthDef(\result00, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs0.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps0.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases0.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar2) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result01, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs1.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps1.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases1.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar2) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result02, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs2.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps2.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases2.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar2) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result03, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs3.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps3.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases3.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar2) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result04, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs4.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps4.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases4.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar2) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result05, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs5.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps5.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases5.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar2) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result06, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs6.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps6.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases6.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar2) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result07, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs7.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps7.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases7.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar2) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;

SynthDef(\result08, {| ampt = 0.4, attTime = 0.02, dura = 0.18, freq = 1.0, ref = 1 |
	var sig, env, newFreqs, newAmps, newPhases, nPartials, randFreq, randAmp;
	newFreqs = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/freqs8.txt");
	newAmps = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/amps8.txt");
	newPhases = Object.readArchive("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/data/source/phases8.txt");
	nPartials = newFreqs.size;
	randFreq = { 1.0.rrand(~scalar2) } ! nPartials;
	sig = LeakDC.ar(Klang.ar(`[newFreqs*randFreq, newAmps, newPhases],
	1, 0) * ampt);
	env = EnvGen.kr(Env([0,1,0], [attTime,(1.0-attTime)]*dura, curve:\sin), doneAction: Done.freeSelf);
	OffsetOut.ar([0,1], Limiter.ar(sig*env,0.4));
}).add;


)

(
~scalar = 1.0;
~scalar2 = 1.0;
)


(
var a, c;
a = Pfunc({ 1.0 }).asStream;
{
    a.do { |val|
        Synth(\result0, [\dura, 0.18 * ~scalar, \attTime, 0.7 * ~scalar]);
		(0.06 * 1.0.rrand(~scalar)).wait;
        Synth(\result1, [\dura, 0.18 * ~scalar, \attTime, 0.7 * ~scalar]);
		(0.06 * 1.0.rrand(~scalar)).wait;
        Synth(\result2, [\dura, 0.18 * ~scalar, \attTime, 0.7 * ~scalar]);
		(0.06 * 1.0.rrand(~scalar)).wait;
        Synth(\result3, [\dura, 0.18 * ~scalar, \attTime, 0.7 * ~scalar]);
		(0.06 * 1.0.rrand(~scalar)).wait;
        Synth(\result4, [\dura, 0.18 * ~scalar, \attTime, 0.7 * ~scalar]);
		(0.06 * 1.0.rrand(~scalar)).wait;
        Synth(\result5, [\dura, 0.18 * ~scalar, \attTime, 0.7 * ~scalar]);
		(0.06 * 1.0.rrand(~scalar)).wait;
        Synth(\result6, [\dura, 0.18 * ~scalar, \attTime, 0.7 * ~scalar]);
		(0.06 * 1.0.rrand(~scalar)).wait;
        Synth(\result7, [\dura, 0.18 * ~scalar, \attTime, 0.7 * ~scalar]);
		(0.06 * 1.0.rrand(~scalar)).wait;
        Synth(\result8, [\dura, 0.18 * ~scalar, \attTime, 0.7 * ~scalar]);
		(0.06 * 1.0.rrand(~scalar))+2.0.wait;
    }
}.fork;

c = Pfunc({ 1.0 }).asStream;
{
    c.do { |val|
        Synth(\result00, [\dura, 0.18 * ~scalar2, \attTime, 0.7 * ~scalar2]);
		(0.06 * 1.0.rrand(~scalar2)).wait;
        Synth(\result01, [\dura, 0.18 * ~scalar2, \attTime, 0.7 * ~scalar2]);
		(0.06 * 1.0.rrand(~scalar2)).wait;
		Synth(\result02, [\dura, 0.18 * ~scalar2, \attTime, 0.7 * ~scalar2]);
		(0.06 * 1.0.rrand(~scalar2)).wait;
        Synth(\result03, [\dura, 0.18 * ~scalar2, \attTime, 0.7 * ~scalar2]);
		(0.06 * 1.0.rrand(~scalar2)).wait;
		Synth(\result04, [\dura, 0.18 * ~scalar2, \attTime, 0.7 * ~scalar2]);
		(0.06 * 1.0.rrand(~scalar2)).wait;
		Synth(\result05, [\dura, 0.18 * ~scalar2, \attTime, 0.7 * ~scalar2]);
		(0.06 * 1.0.rrand(~scalar2)).wait;
		Synth(\result06, [\dura, 0.18 * ~scalar2, \attTime, 0.7 * ~scalar2]);
		(0.06 * 1.0.rrand(~scalar2)).wait;
		Synth(\result07, [\dura, 0.18 * ~scalar2, \attTime, 0.7 * ~scalar2]);
		(0.06 * 1.0.rrand(~scalar2)).wait;
		Synth(\result08, [\dura, 0.18 * ~scalar2, \attTime, 0.7 * ~scalar2]);
		(0.06 * 1.0.rrand(~scalar2))+2.05.wait;
    }
}.fork;
)



//////////////////////////////
//////////////////////////////

//make sure it's correct
NetAddr.langPort;

//receive
(
OSCFunc.new({|msg, time, addr, recvPort|
	~scalar = msg.last;
	// msg.postln;
}, '/chat'); // def style
)

(
OSCFunc.new({|msg, time, addr, recvPort|
	~scalar2 = msg.last;
	// msg.postln;
}, '/chat'); // def style
)

//send
m = NetAddr("127.0.0.1", 8000); // loopback
m.sendMsg("/chat", ~scalar);
m.sendMsg("/chat", 5.0.rrand(10.0));

s.free;

//how does the server look?
s.plotTree;

//record
s.record;



