

freq2matrix = [27.5;29.1353;30.8677;32.7032;34.6479;36.7081;...
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



            if     g(j,i) == 22
                Samples     = 0:SampleRate:timediff(i);
                soundVector = sin(2*pi*freq*Samples);
                key1 = 1;
            elseif g(j,i) == 23
                key2 = 1;
                
            elseif g(j,i) ==24
                key3 = 1;
                
            elseif g(j,i) ==25
                key4 = 1;
                
            elseif g(j,i) ==26
                key5 = 1;
                
            elseif g(j,i) ==27
                key6 = 1;
                
            elseif g(j,i) ==28
                key7 = 1;
                
            elseif g(j,i) ==29
                key8 = 1;
                
            elseif g(j,i) ==30
                key9 = 1;
                
            elseif g(j,i) ==31
                key10 = 1;
                
            elseif g(j,i) ==32
                key11 = 1;
                
            elseif g(j,i) ==33
                key12 = 1;
                
            elseif g(j,i) ==34
                key13 = 1;
                
            elseif g(j,i) ==35
                key14 = 1;
                
            elseif g(j,i) ==36
                key15 = 1;
                
            elseif g(j,i) ==37
                key16 = 1;
                
            elseif g(j,i) ==38
                key17 = 1;
                
            elseif g(j,i) ==39
                key18 = 1;
                
            elseif g(j,i) ==40
                key19 = 1;
                
            elseif g(j,i) ==41
                key20 = 1;
                
            elseif g(j,i) ==42
                key21 = 1;
                
            elseif g(j,i) ==43
                key22 = 1;
                
            elseif g(j,i) ==44
                key23 = 1;
            elseif g(j,i) ==45
                key24 = 1;
                   
            end
        end
        j = j+1;
    end