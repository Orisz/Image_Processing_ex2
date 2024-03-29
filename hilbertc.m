function [x,y] = hilbertc(n)
%HILBERTC Hilbert curve.
%
% [x,y]=hilbertc(n) gives the vector coordinates of points
%   in n-th order Hilbert curve of area 1.
%
% Example: plot of 5-th order curve
%
% [x,y]=hilbertc(5);line(x,y)
%

%   Copyright (c) by Federico Forte
%   Date: 2000/10/06 

if n<=0
  x=0;
  y=0;
else
  [xo,yo]=hilbertc(n-1);
  x=.5*[-.5+yo -.5+xo .5+xo  .5-yo];
  y=.5*[-.5+xo  .5+yo .5+yo -.5-xo];
end