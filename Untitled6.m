clc
clear
%%MIDI CONVERTER BY ALEXANDER RUFRANO%%
%%STONY BROOK UNIVERSITY&&


av= readmidi('old.mid');
fileinfo = midiInfo(av);
notes = fileinfo(:,3);
starttime = fileinfo(:,5);
endtime   = fileinfo(:,6);
deltatime = endtime - starttime;
velocity =  fileinfo(:,4);
fileinfo
minnote = freq2note(2^((min(notes)-69)/12)*440);
notes = notes - min(notes) + 22;

k=1;
i=1;
j=1;
[r c] = size(notes);
while k < r
    
    if round(endtime(k),3) == round(endtime(k+1),3)
        MIDI(i,j) = notes(k);
        i=i+1;
        
        MIDI(i,j) = notes(k+1);
        
    elseif round(endtime(k),3) ~= round(endtime(k+1),3)
        i=1;
        if k == 1
        MIDI(i,j) = notes(k);
        else
        j=j+1;
        MIDI(i,j) = notes(k);
        end
        
    end
    
    k=k+1;
end
MIDI