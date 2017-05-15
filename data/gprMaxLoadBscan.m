function [header, fields] = gprMaxLoadBscan(filename)
% gprmaxLoadOutput loads HDF5 output files from gprMax (www.gprmax.com)
%
%   [header, fields] = gprMaxLoadBscan(filename) loads B-scan data from a
%                      HDF5 output file from gprMax whose name is given by 
%                      filename. A structure containing model information 
%                      (header), and a structure containing time histories 
%                      of EM field values (fields) from receivers in the 
%                      model are returned. For more information on the 
%                      structure of the HDF5 file see 
%                      http://docs.gprmax.com/en/latest/output.html
%
% Author: Craig Warren (Craig.Warren@ed.ac.uk)
% Date: 03/05/2017
%

% Properties contained in the B-scan (merged collection of A-scans)
header.iterations = double(h5readatt(filename,'/', 'Iterations'));
header.dt = h5readatt(filename, '/', 'dt');

% Time vector for plotting
fields.time = linspace(0, (header.iterations)*(header.dt)*1E9, header.iterations);

% Load fields
fields.ex = h5read(filename, strcat('/rxs/rx1/', 'Ex'))';
fields.ey = h5read(filename, strcat('/rxs/rx1/', 'Ey'))';
fields.ez = h5read(filename, strcat('/rxs/rx1/', 'Ez'))';
fields.hx = h5read(filename, strcat('/rxs/rx1/', 'Hx'))';
fields.hy = h5read(filename, strcat('/rxs/rx1/', 'Hy'))';
fields.hz = h5read(filename, strcat('/rxs/rx1/', 'Hz'))';

% Plot B-scan (edit field to point to either Ex or Ey component
% field = fields.ey;
% time = 0:header.dt:header.iterations * header.dt;
% traces = 0:size(field,2);
% 
% fh1=figure('Name', filename);
% clims = [-max(max(abs(field))) max(max(abs(field)))];
% im = imagesc(traces, time, field, clims);
% xlabel('Trace number');
% ylabel('Time [s]');
% c = colorbar;
% c.Label.String = 'Field strength [V/m]';
% ax = gca;
% ax.FontSize = 16;
% xlim([0 traces(end)]);
% 
% % Options to create a nice looking figure for display and printing
% set(fh1,'Color','white','Menubar','none');
% X = 60;   % Paper size
% Y = 30;   % Paper size
% xMargin = 0; % Left/right margins from page borders
% yMargin = 0;  % Bottom/top margins from page borders
% xSize = X - 2*xMargin;    % Figure size on paper (width & height)
% ySize = Y - 2*yMargin;    % Figure size on paper (width & height)
% 
% % Figure size displayed on screen
% set(fh1, 'Units','centimeters', 'Position', [0 0 xSize ySize])
% movegui(fh1, 'center')
% 
% % Figure size printed on paper
% set(fh1,'PaperUnits', 'centimeters')
% set(fh1,'PaperSize', [X Y])
% set(fh1,'PaperPosition', [xMargin yMargin xSize ySize])
% set(fh1,'PaperOrientation', 'portrait')
end
