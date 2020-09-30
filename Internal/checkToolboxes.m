function pass = checkToolboxes ()
% checkToolboxes : checks the toolboxes superSegger needs are installed.
% Toolboxes needed : 
% gads_toolbox : global optimization
% image_toolbox : image
% neural_network_toolbox : neural network
% optimization_toolbox : optimization
% statistics_toolbox : statistics
%
% OUTPUT :
%   pass : 0 if some of the toolboxes are missing, 1 if not.
%
% Copyright (C) 2016 Wiggins Lab
% Written by Paul Wiggins & Stella Stylianidou.
% University of Washington, 2016
% This file is part of SuperSegger.
%
% SuperSegger is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% SuperSegger is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with SuperSegger.  If not, see <http://www.gnu.org/licenses/>.

image = license('test', 'image_toolbox');
statistics = license('test', 'Statistics_Toolbox');
neural = license('test', 'Deep_Learning_Toolbox');
optim = license('test', 'Optimization_Toolbox');
glob_optim = license('test', 'gads_toolbox');


pass = image && statistics && neural && optim && glob_optim;

if (~image)
    disp ('Please install the image toolbox');
end

if (~statistics)
    disp ('Please install the statistics toolbox');
end

if (~neural)
    disp ('Please install the neural network toolbox');
end

if (~optim)
    disp ('Please install the optimization toolbox');
end

if (~glob_optim)
    disp ('Please install the global optimization toolbox');
end

end
