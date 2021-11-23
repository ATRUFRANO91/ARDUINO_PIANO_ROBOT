clc
clear
%%MIDI CONVERTER BY ALEXANDER RUFRANO%%
%%STONY BROOK UNIVERSITY&&
function MID = CONV(filename)

av = readmidi('old.mid');
fileinfo = midiInfo(av);
notes = fileinfo(:,3);
starttime = fileinfo(:,5);
endtime   = fileinfo(:,6);
deltatime = endtime - starttime;
velocity =  fileinfo(:,4);
minnote = freq2note(2^((min(notes)-69)/12)*440);
notes = notes - min(notes);
clc
if max(notes) > 24
    disp("SONG MUST BE WITHIN TWO OCTAVES. THIS SONG IS NOT");
    
else
    
    k=1;
    i=1;
    j=1;
    [r c] = size(notes);
    %%TO CONVERT MIDI INTO TWO MATRICIES (TIME/NOTE)
    while k < r +1
        
        if k == r
            timediff(j) = endtime(k)- starttime(k);
            j=j+1;
            MIDI(i,j) = notes(k);
            timediff(j) = endtime(k)- starttime(k);
        else
            if round(endtime(k),3) == round(endtime(k+1),3)
                MIDI(i,j) = notes(k);
                i=i+1;
                
                MIDI(i,j) = notes(k+1);
                
                
                
            elseif round(endtime(k),3) ~= round(endtime(k+1),3)
                timediff(j) = endtime(k)- starttime(k);
                i=1;
                if k == 1
                    MIDI(i,j) = notes(k);
                else
                    j=j+1;
                    MIDI(i,j) = notes(k);
                end
                
            end
        end
        k=k+1;
    end
    MIDI = MIDI + 1 ;
    MIDI
    timediff = transpose(timediff);
    timediff
    %TO CONVERT NOTE MATRIX INTO PROJECT MATRIX
    i=1;
    j=1;
    k = 1;
    l = 1;
    [r c] = size(MIDI);
    MID = zeros(c,24);
    
    
    while j <= c
        
        while i <= r
            
            if MIDI(i,j) ==0
                i=1;
                k=k+1;
                break
            else
                if velocity(k) > mean(velocity)
                    
                    MID(j,MIDI(i,j)) = 2;
                else
                    MID(j,MIDI(i,j)) = 1;
                end
                
            end
            
            i=i+1;
            k = k+1;
            
        end
        i=1;
        j = j+1;
        
    end
    
    
end