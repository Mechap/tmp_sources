input colorbrewer-rgb;

beginfig(1);
    path s[]; s0 = unitsquare shifted (-1/2, -1/2);
    numeric a, n; a = 36; n=0;
    for i=1 upto 4:
        for j=1 upto 4:
            s[incr n] = s0 scaled if not odd (i+j): 2a rotated -24.29519 else: a fi
            shifted (1.822875a * (i,j));   
            draw s[n];
        endfor
    endfor
    fill subpath (2,3) of s[6] -- subpath (0,1) of s[11] -- cycle withcolor Oranges 7 3;
    draw subpath (2,3) of s[6] -- subpath (0,1) of s[11] -- cycle;
    for i=0 upto 3:
        draw center s[4i+1] -- center s[4i+4] dashed evenly withcolor 2/3 blue;
        draw center s[i+1] -- center s[i+13] dashed evenly withcolor 2/3 blue;
    endfor
    forsuffixes @=6,7,10,11:
        fill fullcircle scaled 4 shifted center s@ withcolor Oranges 7 4;
        draw fullcircle scaled 4 shifted center s@;
    endfor
    currentpicture := currentpicture rotated 24.29519;
endfig;
