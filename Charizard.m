clc
clear all
 
n=-2:1:12;
nx = -2:8 ; 
nh = 0:12; % Set time vectors for x and h

x = usD(n-1) - usD(n-6); % Compute values of x
h = tri((nh-6)/4); % Compute values of h
y = conv(x,h); % Compute the convolution of x with h

ny=(nx(1) + nh(1)) + (0:(length(nx) + length(nh) - 2)) ;

subplot(3,1,1) ; stem(nx,x,'k','filled');
xlabel('n') ; ylabel('x'); axis([-2,20,0,4]);

subplot(3,1,2) ; stem(nh,h,'k','filled') ;
xlabel('n') ; ylabel('h'); axis([-2,20,0,4]);

subplot(3,1,3) ; stem(ny,y,'k','filled');
xlabel('n') ; ylabel('y'); axis([-2,20,0,4]);
 
function z = usD(n)
z = double(n >= 0); % Set output to one for non-negative arguments
I = find(round(n) ~= n); % Index non-integer values of n
z(I) = NaN; 
end

function d= tri(n)
…
…
… 
end 