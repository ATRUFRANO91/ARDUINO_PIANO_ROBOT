function STR2OUTPUTSIMULATION(g,timediff)
%%ALL FREQ OF A 88-key PIANO
freq = [27.5;29.1353;30.8677;32.7032;34.6479;36.7081;...
    38.8909;41.2035;43.6536;46.2493;48.9995;51.9130;55.0000;58.2705;...
    61.7354; 65.4064; 69.2957; 73.4162;77.7817;82.4069;87.3071;92.4986;...
    97.9989;103.826;110.000;116.541;123.471;130.813;138.591;...
    146.832;155.563;164.814;174.614;184.997;195.998;207.652;...
    220.000;233.082;246.942;261.626;277.183;293.665;311.127;329.628;...
    349.228;369.994;391.995;415.305;440.000; 466.164;493.883;...
    523.251;554.365;587.330;622.254;659.255;698.456;739.989;783.991;...
    830.609;880.000;932.328;987.767;1046.50;1108.73;1174.66;...
    1244.51;1318.51;1396.91;1479.98;1567.98;1661.22;1760.00;...
    1864.66;1975.53;2093.00;2217.46;2349.32;2489.02;2637.02;...
    2793.83;2959.96;3135.96;3322.44;3520.00;3729.31;3951.07;4186.01];
%freq(g(j,i)+startkey) is the frequency of the lowest frequency key that
%should be played in the song
startkey = 20;%%THE LOWEST FREQUENCY KEY THAT SHOULD BE PRESSED
SampleRate = 5*10^-5;%%SAMPLE RATE
Samples     = 0:SampleRate:0.3448;%%STANDARD AMOUNT OF SAMPLES TO PRODUCE
[r, c] = size(g);%%SIZE OF THE SONG TO KNOW WHEN TO STOP ITERATIONS
i = 1;%%SET ITERATOR TO 1 AND GO TO THE END
while i < c + 1 %%ITERATE THROUGH EACH COLUMN
    j = 1;%%GO TO FIRST ROW AND PRESS ALL KEYS NEEDED FOR CERTAIN INSTANCE
    while j < r+1 %%TURN ON SPECIFIC PINS IN COLUMN
        if g(j,i) <= 0 %%IF <missing> is value, end iteration.
            break %%SKIP TO NEXT KEY
        elseif g(j,i) > 41
            j = j+1;%%SKIP THIS KEY AND GO TO THE NEXT
        else
            %%PRODUCE A SOUND USING SOUND FUNTION
            sound(sin(2*pi*freq(g(j,i)+startkey)*Samples), 1/SampleRate)
            j = j+1; 
            pause(timediff(i));%%DELAY UNTIL THE NEXT KEY SHOULD BE PRESSED
        end
     end
    i = i+1;%%GO TO NEXT KEY THAT SHOLD BE PRESSED
    end
end



