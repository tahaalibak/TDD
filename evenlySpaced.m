function e=evenlySpaced(a,b,c)
% Arranges numbers in decending order.
% Checks if the middle term is equidistant from the largest and smallest terms.
% Returns 1 if true and 0 otherwise
% Taha Bakhtiyar 2/2011
  if (a<b)
    t=b;
    b=a;
    a=t;
  end
  if (b<c)
    t=c;
    c=b;
    b=t;  
  end
  if (a<b)
    t=b;
    b=a;
    a=t;
  end
  if ( (b-a) == (c-b) )
    e=1;
  else
    e=0;
  end
end