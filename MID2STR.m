function g = MID2STR(MIDI)

[r c] = size(MIDI);
j = 1;
i = 1;
%writeDigitalPin(a,strcat('D',int2str(21+j)),1) ON FOR LOOP
%writeDigitalPin(a,strcat('D',int2str(21+j)),0) OFF FOR LOOP
v = 1;
while i < r+1
    
    while j < c
        temp = MIDI(i,j);
        pinnum = 21+j;
        varpinnum = 45+j;
        if temp == 2
            if j > 8 && j < 17
                varpinnum = 45+(j-8);
            elseif j > 16
                varpinnum = 45+(j-16);
            end
            
            g(v,i)=  varpinnum;
            v=v+1;
            g(v,i) = pinnum;
            v=v+1;
        elseif temp == 1
            
            g(v,i) = pinnum;
            v=v+1;
        elseif temp == 0
            
            %writeDigitalPin(a,strcat('D',int2str(pinnum)),temp);
            
        else
            disp("ERROR");
            
        end
        j=j+1;
        
    end
    
    v=1;
    j=1;
    i=i+1;
    
end

end