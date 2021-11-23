function STR2OUTPUT(g)
i = 1;

[r, c] = size(g);
while i < c + 1 %%ITERATE THROUGH EACH COLUMN
    j = 1;
    while j < r+1 %%TURN ON SPECIFIC PINS IN COLUMN
        if ismissing(g(j,i)) == 1 %%IF <missing> is value, end iteration.
            break
        else
            if char(g(j,i))     =="D22"
                key1 = 1;
            elseif char(g(j,i)) =="D23"
                key2 = 1;
                
            elseif char(g(j,i)) =="D24"
                key3 = 1;
                
            elseif char(g(j,i)) =="D25"
                key4 = 1;
                
            elseif char(g(j,i)) =="D26"
                key5 = 1;
                
            elseif char(g(j,i)) =="D27"
                key6 = 1;
                
            elseif char(g(j,i)) =="D28"
                key7 = 1;
                
            elseif char(g(j,i)) =="D29"
                playkey29.
                
            elseif char(g(j,i)) =="D30"
                key9 = 1;
                
            elseif char(g(j,i)) =="D31"
                key10 = 1;
                
            elseif char(g(j,i)) =="D32"
                key11 = 1;
                
            elseif char(g(j,i)) =="D33"
                key12 = 1;
                
            elseif char(g(j,i)) =="D34"
                key13 = 1;
                
            elseif char(g(j,i)) =="D35"
                key14 = 1;
                
            elseif char(g(j,i)) =="D36"
                key15 = 1;
                
            elseif char(g(j,i)) =="D37"
                key16 = 1;
                
            elseif char(g(j,i)) =="D38"
                key17 = 1;
                
            elseif char(g(j,i)) =="D39"
                key18 = 1;
                
            elseif char(g(j,i)) =="D40"
                key19 = 1;
                
            elseif char(g(j,i)) =="D41"
                key20 = 1;
                
            elseif char(g(j,i)) =="D42"
                key21 = 1;
                
            elseif char(g(j,i)) =="D43"
                key22 = 1;
                
            elseif char(g(j,i)) =="D44"
                key23 = 1;
            elseif char(g(j,i)) =="D45"
                key24 = 1;
                   
            end
        end
        j = j+1;
    end
    pause(deltatime(i)); %%DELAY TO LET GO OF KEY BASED ON TIME MATRIX.
    j = 1;
    while j < r+1 %%TURN OFF SPECIFIC PINS IN COLUMN
        if ismissing(g(j,i)) == 1 %%IF <missing> is value, end iteration.
            break
        else
            if char(g(j,i))     =="D22"
                key1 = 0;
            elseif char(g(j,i)) =="D23"
                key2 = 0;
                
            elseif char(g(j,i)) =="D24"
                key3 = 0;
                
            elseif char(g(j,i)) =="D25"
                key4 = 0;
                
            elseif char(g(j,i)) =="D26"
                key5 = 0;
                
            elseif char(g(j,i)) =="D27"
                key6 = 0;
                
            elseif char(g(j,i)) =="D28"
                key7 = 0;
                
            elseif char(g(j,i)) =="D29"
                key8 = 0;
                
            elseif char(g(j,i)) =="D30"
                key9 = 0;
                
            elseif char(g(j,i)) =="D31"
                key10 = 0;
                
            elseif char(g(j,i)) =="D32"
                key11 = 0;
                
            elseif char(g(j,i)) =="D33"
                key12 = 0;
                
            elseif char(g(j,i)) =="D34"
                key13 = 0;
                
            elseif char(g(j,i)) =="D35"
                key14 = 0;
                
            elseif char(g(j,i)) =="D36"
                key15 = 0;
                
            elseif char(g(j,i)) =="D37"
                key16 = 0;
                
            elseif char(g(j,i)) =="D38"
                key17 = 0;
                
            elseif char(g(j,i)) =="D39"
                key18 = 0;
                
            elseif char(g(j,i)) =="D40"
                key19 = 0;
                
            elseif char(g(j,i)) =="D41"
                key20 = 0;
                
            elseif char(g(j,i)) =="D42"
                key21 = 0;
                
            elseif char(g(j,i)) =="D43"
                key22 = 0;
                
            elseif char(g(j,i)) =="D44"
                key23 = 0;
                
            elseif char(g(j,i)) =="D45"
                key24 = 0;
                                
            end
        end
        j = j+1;
    end
    i = i+1;
    pause(timediff(i)); %%DELAY TO GO TO NEXT KEY BASED ON TIME MATRIX.
    %%GO TO NEXT COLUMN
    
end
end



