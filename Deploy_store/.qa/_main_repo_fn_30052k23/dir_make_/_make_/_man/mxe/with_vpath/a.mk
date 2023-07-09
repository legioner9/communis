VPATH := Editor TextLine # VP

%.o: %.cpp
    gcc -c $< 