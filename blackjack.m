function e=blackjack(a,b)
% blackjack(a,b), given 2 int values greater than 0, returns the value nearest to 21 without going over.
% Returns 0 if they both go over. Returns 111 and error prompt if input are not positive integers.
% Taha Bakhtiyar 2/2011
  if ((a>0) && (mod(a,1)==0) && (mod(b,1)==0) && (b>0))
    if ((a>21) && (b>21))
      e=0;
    elseif (a==21)
      e=21;
    elseif (b==21)
      e=21;
    elseif (a>b)
      e=a;
    else
      e=b;
    end
  else
      e=111;
    printf ('One (or both) of the values is (or are) not a positive integer:\n')
  end
end