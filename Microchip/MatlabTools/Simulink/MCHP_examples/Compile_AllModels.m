Response = input('If you work from the default installation folder,\nmake sure you have permission rights to write into that folder.\nOtherwise, copy this example folder to your working folder before executing this script.\n --> Continue (y/n) ? >> ','s');
if strcmpi(Response,'y') == 0
	disp('Cancel by user.');
	return;
end

disp('Log output to file MCHP_log.txt');
if exist('MCHP_log.txt') == 2
	delete('MCHP_log.txt');
end

diary('MCHP_log.txt');

CurrentDir = pwd;

dirmdl = dir('*.mdl');
listFilename = {};
for i=1:numel(dirmdl)
    listFilename{end+1} = dirmdl(i).name;
end

n = length(listFilename);
h = waitbar(0,[num2str(n) ' models'],'Name','Compiling models');
movegui(h,'north');

FlagAllOk = 1;

for i=1:n    
    filename = fullfile(CurrentDir,listFilename{i});
    [pathstr name ext] = fileparts(filename);
    try
    if ishandle(h)
        waitbar((i-.5)/n,h,regexprep([name ext],'\_','\\_')); % Update the wait bar
    else
        h = waitbar((i-.5)/n,[num2str(n) ' models'],'Name','Compiling models');
        movegui(h,'north');
    end
    catch
    end
       
    try
    % Clean-up
    cd(pathstr)
    if exist('slprj') == 7
        rmdir('slprj','s');
    end
    if exist([filename '.X']) == 7
        rmdir([filename '.X'],'s');
    end
    catch
        warning('Could not clean up files...');
    end
    
    try
    % open & compile
    open_system(filename);
    MCHP_MASTERLINK =  find_system(bdroot(gcs),'LoadFullyIfNeeded','off','SearchDepth',3,'RegExp', 'on','PICREF','.*');
    if ~isempty(MCHP_MASTERLINK)
        % -------------------------------------------------------------
        % Override few parameters
        % -------------------------------------------------------------
        set_param(bdroot(gcs),'MCHP_AUTO_FLASH','off');
        set_param(bdroot(gcs),'GenerateReport','off');
        set_param(bdroot(gcs),'GenCodeOnly','off');
		%set_param(bdroot(gcs),'MCHP_MULTITHREAD_COMPILATION','on');	% Speed up !        
        % -------------------------------------------------------------
        % -------------------------------------------------------------	
		%dsPIC_ConfigureModelFordsPICTarget();  We should automatically configure compiler path ...!
		feature('RTWBuild',get_param(bdroot,'Handle'));
		close_system(filename,0)
	end
    catch
    end
    
    if (exist(fullfile(pathstr,[name '.X' filesep name '.hex']))== 2) || ...
        (exist(fullfile(pathstr,[name '.X' filesep name '.elf']))== 2) || ...
        (exist(fullfile(pathstr,[name '.X' filesep name '.cof']))== 2)
        CheckModel{i} = 'Ok';
    else
        CheckModel{i} = 'Not Ok';
        FlagAllOk = 0;
    end
end

if ishandle(h)
    close(h); % Close the wait bar
end

clc;
for i=1:length(listFilename)
    disp([CheckModel{i} '  ==>   ' listFilename{i}]);
end

Response = input('Delete all generated files (y/n) ? ','s');
if strcmpi(Response,'y')
        % Do we want clean it up after compilation?
    for i=1:length(listFilename)
        filename = fullfile(CurrentDir,listFilename{i});
        [pathstr name ext] = fileparts(filename);
        
        try
        % Clean-up after compilation
            cd(pathstr)
            if exist([name '.hex']) == 2
                delete([name '.hex']);
            end
            if exist([name '.elf']) == 2
                delete([name '.elf']);
            end
            if exist([name '.cof']) == 2
                delete([name '.cof']);
            end    
            if exist([name '.mcp']) == 2
                delete([name '.mcp']);
            end        
            if exist([name '.lst']) == 2
                delete([name '.lst']);
            end                
            if exist('slprj') == 7
                rmdir('slprj','s');
            end
            if exist([name '.X']) == 7
                rmdir([name '.X'],'s');
            end
        catch
            warning('Could not clean up files...');
        end        
        
    end
end
diary off;
cd(CurrentDir);

clc;
% Print final result
if (FlagAllOk == 0)
    disp('Model using more than 8 I/Os pins require a license to compile.');
end
for i=1:length(listFilename)
    disp([CheckModel{i} '  ==>   ' listFilename{i}]);
end


