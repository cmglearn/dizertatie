function [t,y] = call_dstate()
    function dydt = dstate (t,y)
        alpha=2; gamma=0.0001;
        dydt = alpha* y-gamma *y^2;
    end
    tspan = [0 9]; % set time interval
    y0 = 10; % set initial condition
    % dstate evaluates r.h.s. of the ode
    [t,y] = ode45( @dstate ,tspan ,y0);
    plot(t,y);
    disp([t,y]); % displays t and y(t)
    steady_state = y(end)
end