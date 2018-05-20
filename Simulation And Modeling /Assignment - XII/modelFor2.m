function [ HARTIME, MAXHAR, WAITTIME,MAXWAIT,IDLETIME ] = modelFor2(n,between)
   
    unload_a = 45;
    unload_b = 90;
    unload(1) = unload_a + (unload_b - unload_a) * rand;
    
    arrive(1) = between(1);
    
    %initialize our output variables
    HARTIME = unload(1);
    MAXHAR = unload(1);
    WAITTIME = 0;
    MAXWAIT = 0;
    IDLETIME = 0;
    
    timeDiff(1) = arrive(1);
    
    finish(1) = arrive(1) + unload(1);
    
    for i = 2:n
%         between(i) = randi([15,45]);
        unload(i) = randi([45,90]);
        
        arrive(i) = arrive(i-1) + between(i);
        
        timeDiff(i) = arrive(i) - finish(i-1);
        
        if timeDiff(i) < 0
            wait(i) = -timeDiff(i);
            idle(i) = 0;
        else
           idle(i) = timeDiff(i);
           wait(i) = 0;
        end
        
        start(i) = arrive(i) + wait(i);
        finish(i) = start(i) + unload(i);
        harbor(i) = wait(i) + unload(i);
        
        HARTIME = HARTIME + harbor(i);
        
        if harbor(i) > MAXHAR
            MAXHAR = harbor(i);
                   
        end
       
        WAITTIME = WAITTIME + wait(i);
        IDLETIME = IDLETIME + idle(i);
        
        if wait(i) > MAXWAIT
            MAXWAIT = wait(i);
        end
    end
        
        HARTIME = HARTIME / n;
        WAITTIME = WAITTIME /n;
        IDLETIME = IDLETIME / finish(n);
end

