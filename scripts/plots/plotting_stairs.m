% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.


% This is an example of how to plot multi-arrays in stairs:
% Let´s say you have a vector array of torques 'tau' with size [3x1]
% and you also have a time vector 't' of appropiate size.
% A nice way to plot these in stairs without using 'hold on' is:

figure;
    Y = [tau(1,:); tau(2,:); tau(3,:)];
    h = stairs(t', Y');
    set(h(1),'color','b','LineStyle','-', 'Linewidth',1.5) 
    set(h(2),'color','g','LineStyle','--','Linewidth',1.5)
    set(h(3),'color','r','LineStyle','-.','Linewidth',1.5)
    setunits('s','Nm');
    title('Torques (t)');
    legend('Torque x','Torque y','Torque z','location','NorthEast');
    setfigtempl;
    as = axis; axis([as(1) as(2) axis_min axis_max]);
	
% eof