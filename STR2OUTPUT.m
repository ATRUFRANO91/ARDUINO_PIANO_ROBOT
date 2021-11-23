function info = STR2OUTPUT(g,a)
i = 1;
j = 1;
[r, c] = size(g);
while i < c + 1 %%ITERATE THROUGH EACH COLUMN
    j = 1;
    while j < r+1 %%TURN ON SPECIFIC PINS IN COLUMN
        if ismissing(g(j,i)) == 1 %%IF <missing> is value, end iteration.
            break
        else
            writeDigitalPin(a,char(g(j,i)),1) %%TURN ON PIN
            
        end
        j = j+1;
    end
    pause(deltatime(i)); %%DELAY TO LET GO OF KEY BASED ON TIME MATRIX.
    j = 1;
    while j < r+1 %%TURN OFF SPECIFIC PINS IN COLUMN
        if ismissing(g(j,i)) == 1 %%IF <missing> is value, end iteration.
            break
        else
            writeDigitalPin(a,char(g(j,i)),0) %%TURN OFF PIN
        end
        j = j+1;
    end
    i = i+1;
    pause(1.2); %%DELAY TO GO TO NEXT KEY BASED ON TIME MATRIX.
    %%GO TO NEXT COLUMN
    
end
end
