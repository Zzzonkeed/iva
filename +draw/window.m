function window(q,dq,shadowq)

global eva

if isempty( findobj( 'Tag', 'main window' ) )
	figure('Tag','main window')
	
	xlabel('x')
	ylabel('y')
	zlabel('z')
	
	view( [0,0] ); % sagittal view
	
	colors = 'brgc';
	% chains right now contain how to draw
	for limb = 1:length(eva.chains)
		line( 'XData', 0, 'YData', 0, 'ZData', 0, 'Color', colors(limb), 'Tag', [ 'limb' num2str(limb) ] )
		line( 'XData', 0, 'YData', 0, 'ZData', 0, 'Color', colors(limb), 'Tag', [ 'shadowlimb' num2str(limb) ], 'LineStyle','--' )
	end
	line(0,0,0,'Marker','.','Tag','com point')
	line([-1 1],[0 0],[0 0],'LineStyle','--','Tag','ground')
	line(0,0,0,'Marker','o','LineStyle','none','Tag','pc points')
	set(get(findobj('Tag','ground'),'parent'),'box','on')
end

if exist('q')
	p = robot.p( 1:eva.n, q );
	for limb = 1:length(eva.chains)
		current = p( 1:3, eva.chains(limb).chain );
		set( findobj( 'Tag', [ 'limb' num2str(limb) ] ), ...
		     'XData', current(1,:), ...
		     'YData', current(2,:), ...
		     'ZData', current(3,:) )
	end
	com = robot.(eva.name).out_com( q );
	set( findobj( 'Tag', 'com point' ), ...
		     'XData', com(1), ...
		     'YData', com(2), ...
		     'ZData', com(3) );
	set(  get( findobj('Tag','main window'), 'CurrentAxes' ), ...
	      'XLim', [com(1)-eva.draw.offset com(1)+eva.draw.offset], ...
	      'YLim', [com(2)-eva.draw.offset com(2)+eva.draw.offset], ...
	      'ZLim', [com(3)-eva.draw.offset com(3)+eva.draw.offset] );
	set(  findobj('Tag','ground'), ...
	      'XData', [com(1)-eva.draw.offset com(1)+eva.draw.offset] )
	
	whichpoints = unique( [eva.chains.chain] );
	pc = robot.pc( whichpoints, q );
	set( findobj( 'Tag', 'pc points' ), ...
             'XData', pc(1,:), ...
             'YData', pc(2,:), ...
             'ZData', pc(3,:) );
end

if exist('dq')
%  	dp = robot.dp( 1:eva.n, q, dq );
%  	dpoint = unique( [eva.chains.chain] );
else
	% zero the velocity so that it is not shown
end


if exist('shadowq')
	shadowp = robot.p( 1:eva.n, shadowq );
	for limb = 1:length(eva.chains)
		current = shadowp( 1:3, eva.chains(limb).chain );
		set( findobj( 'Tag', [ 'shadowlimb' num2str(limb) ] ), ...
		     'XData', current(1,:), ...
		     'YData', current(2,:), ...
		     'ZData', current(3,:) )
	end
else
	for limb = 1:length(eva.chains)
		set( findobj( 'Tag', [ 'shadowlimb' num2str(limb) ] ), ...
		     'XData', 0, ...
		     'YData', 0, ...
		     'ZData', 0 )
	end
end