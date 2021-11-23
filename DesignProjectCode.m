clc 
clear
%a = arduino('COM4','Mega2560');
%song = input('Please enter filename of song in format "filename.mid" ','s');
song = "old.mid";
MIDI = MID2MIDI(song);
timediff = MIDI(1:end,end);
g = MID2STR(MIDI(1:end,1:end-1));
STR2OUTPUTSIMULATION(g,timediff)
%1