function distance = calculateDistance(time, speed)
 
    cd '<path>'
    % dos and system commands are doing the same thing using different approaches. I tried this code for me and my approach needed the python and matlab scripts to be in the same directory
    commandStr = ['python main.py ',num2str(time),' ',num2str(speed)]
    [status, commandOut] = system(commandStr);
    
    %command = 'cd';
    %[status,cmdout] = dos(command)
    
    if status==0
    fprintf('worked');
    else
        disp("failed")
    end
    
    distance = str2num(commandOut);
 
out = [distance];

end
