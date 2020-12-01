function intCheckForInstallLib

boxes = {'Curve Fitting Toolbox',...                                
'Global Optimization Toolbox',...                           
'Image Processing Toolbox', ...                             
'Deep Learning Toolbox',...                                
'Optimization Toolbox',...                                  
'Parallel Computing Toolbox',...                            
'Statistics and Machine Learning Toolbox'};

tmp = ver;

disp(struct2table(ver));


for ii = 1:numel(boxes)
found = strfind({tmp.Name}, boxes{ii} );
if isempty(cell2mat( found ));
    warning( ['Toolbox "', boxes{ii}, '" is missing. This may cause errors.' ] );
end

end

end