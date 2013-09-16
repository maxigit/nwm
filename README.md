This is a generic makefile to generate files and documentation with \emphasis{noweb}.
The main idea is to use `noweb in a many to many way, ie, each noweb file can participate
in the generation of different file, and one file can generate by many noweb file.
The typicall example of 1 noweb file generating many files could one file 
generating a C-header and body files or the same generating the code, some test
and some documentation etc. Having multiple noweb files generating one file can used
to generate a makefile a global README etc ...

At the moment, this makefile is really generic and try to not impose any structure to the 
generating files nor the generated ones. The directory structure of the generated files
can be totally different form  the generating file structure. However it's probably a good
practice to separate the  source files in a separate directory. Default is master.
The main problem when having a file generated by many other is to decide which source files
needs to be involve?
The obvious answer is all the files which contains the required root. However what if a file
use a non-file chunk defined somewhere else? We could try to resolve chunk dependency but
we can't decide if a chunk is local to a file or should be used by every file including
a chunk with the same name. So solve this problem we let the user specify it's own dependency
sub makefile.
