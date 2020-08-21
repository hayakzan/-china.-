///////////////////////////////////////////////////////////////////////////////////////////
//ANNitive--GUIless version for "china."
///////////////////////////////////////////////////////////////////////////////////////////

~atsFile = AtsFile.new("/Users/rikyu/Desktop/PORTFOLIO/NEW_ANN/china.ats".standardizePath).load;


//TRAINING SPECTRA
(
~analyze = Routine({
~spectrum1 = List[];
~spectrum2 = List[];
~spectrum3 = List[];
~newFreqs = Array.new;
~newAmps = Array.new;
~freqs1 = Array.new;
~amps1 = Array.new;
~phas1 = Array.new;
~freqs2 = Array.new;
~amps2 = Array.new;
~phas2 = Array.new;
~freqs3 = Array.new;
~amps3 = Array.new;
~phas3 = Array.new;


~atsFile = AtsFile.new("/Users/rikyu/Desktop/PORTFOLIO/NEW_ANN/china.ats".standardizePath).load;
	~atsFrame1 = Array[0.rrand(8)]; //input
	~atsFrame2 = Array[0.rrand(8)]; //target
	~atsFrame3 = Array[0]; //test dataset

	~freqs1.add(~atsFile.getFrameFreq(~atsFrame1).flat);
	~amps1.add(~atsFile.getFrameAmp(~atsFrame1).flat);
	~phas1.add(~atsFile.getFramePhase(~atsFrame1).flat);

	~freqs2.add(~atsFile.getFrameFreq(~atsFrame2).flat);
	~amps2.add(~atsFile.getFrameAmp(~atsFrame2).flat);
	~phas2.add(~atsFile.getFramePhase(~atsFrame2).flat);

	~freqs3.add(~atsFile.getFrameFreq(~atsFrame3).flat);
	~amps3.add(~atsFile.getFrameAmp(~atsFrame3).flat);
	~phas3.add(~atsFile.getFramePhase(~atsFrame3).flat);

	~freqs1 = ~freqs1.flat;
	~amps1 = ~amps1.flat;
	~phas1 = ~phas1.flat;

	~freqs2 = ~freqs2.flat;
	~amps2 = ~amps2.flat;
	~phas2 = ~phas2.flat;

	~freqs3 = ~freqs3.flat;
	~amps3 = ~amps3.flat;
	~phas3 = ~phas3.flat;

	for (0, ~freqs1[~freqs1.size-2], { arg i=0; ~spectrum1.add(~freqs1[i]); ~spectrum1.add(~amps1[i]); ~spectrum1.add(~phas1[i])});
	~spectrum1.insert(0, ~freqs1[0]); //needed because the first index gets dropped for some reason in .py.
	//keep this otherwise it cannot shape it. NOTE: got rid of flattening, which caused genfromtxt to lose the first value.???
	~file1 = File("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/input.txt".standardizePath, "w");
	~file1.write(~spectrum1.asCompileString);
	~file1.close;

for (0, ~freqs2[~freqs2.size-2], { arg i=0; ~spectrum2.add(~freqs2[i]); ~spectrum2.add(~amps2[i]); ~spectrum2.add(~phas2[i])});
	~spectrum2.insert(0, ~freqs2[0]); //needed because the first index gets dropped for some reason in .py.
	//keep this otherwise it cannot shape it.
	~file2 = File("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/target.txt".standardizePath, "w");
	~file2.write(~spectrum2.asCompileString);
	~file2.close;

for (0, ~freqs3[~freqs3.size-2], { arg i=0; ~spectrum3.add(~freqs3[i]); ~spectrum3.add(~amps3[i]); ~spectrum3.add(~phas3[i])});
	~spectrum3.insert(0, ~freqs3[0]); //needed because the first index gets dropped for some reason in .py.
	//keep this otherwise it cannot shape it.
	~file3 = File("/users/rikyu/Desktop/PORTFOLIO/NEW_ANN/test.txt".standardizePath, "w");
	~file3.write(~spectrum3.asCompileString);
	~file3.close;

	0.1.wait;

	"spectral data is ready for ANN. Head over to the Python code and start training.".postln;

}).play;
)
