function bt_grap2(node,x,y,dx,dy)
% BT_GRAP2
%
%  Helper function for BT_GRAPH.

% Copyright (c) MathWorks Inc. 1998-2001. All rights reserved.

global bt_nil

if node~=bt_nil
  text(x+0.4,y,num2str(node.data));

  if node.left~=bt_nil
    newx=x-dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    bt_grap2(node.left,newx,newy,dx/2,dy);
  end

  if node.right~=bt_nil
    newx=x+dx;
    newy=y-dy;
    plot([x newx],[y newy],'o-');
    bt_grap2(node.right,newx,newy,dx/2,dy);
  end
end
