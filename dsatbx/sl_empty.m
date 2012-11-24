function z=sl_empty(sl)
% SL_EMPTY(sl)
%
%  z=SL_EMPTY(sl) returns true if the linked list is empty.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

z=(sl.head==sl.tail);

