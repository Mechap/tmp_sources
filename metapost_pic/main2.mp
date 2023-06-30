path paper; paper = origin {dir -16} .. (100, 0) {dir -13} -- (100,50) -- (0, 50) -- cycle;
path header, source, object, exe;
header = paper;
source = header shifted 180 right;
object = source shifted 180 right;
exe = source shifted 100 down;

beginfig(2);
    fill header withcolor (1, 1, 7/8);
    draw header;

    label("\tll{header files \\ \small a.h\ b.h\ c.h}", center header);
    label.top("\tll{included into}", 1/2[center header, center source]);

    fill source withcolor (1, 1, 7/8);
    draw source;

    label("\tll{source files \\ \small a.cpp\ b.cpp\ c.cpp}", center source);
    label.top("\tll{compiled to}", 1/2[center source, center object]);

    fill object withcolor (1, 7/8, 7/8);
    draw object;

    label("\tll{object files \\ \small a.o\ b.o\ c.o}", center object);
    label.top("\tll{linked to}", 1/2[center object, center exe]);

    fill exe withcolor (7/8, 7/8, 1);
    draw exe;

    label("\tll{binary files \\ executable}", center exe);

    drawarrow point 3/2 of bbox header -- point 7/2 of bbox source dashed evenly scaled 1/2;
    drawarrow point 3/2 of bbox source -- point 7/2 of bbox object;
    drawarrow point 1/2 of bbox object -- point 3/2 of bbox exe;
endfig;
