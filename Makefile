CC = gcc
#CC = wllvm
MFILE = Makefile

COPTF0 = -O0
COPTF2 = -O2
COPTF3 = -O3

CFLAGS = -pedantic -Wall -g $(COPTF2)
#CFLAGS += -L/usr/lib/python2.7/config-x86_64-linux-gnu -L/usr/lib -lpython2.7 -lpthread -ldl  -lutil -lm  -Xlinker -export-dynamic -Wl,-O1 -Wl,-Bsymbolic-functions
CFLAGS +=  -Xlinker -export-dynamic

INCLUDES =
#PYTHONINCLUDES = $(shell /usr/bin/python-config --cflags)
#PYTHONINCLUDES = -I/usr/include/python3.6m
PYTHONINCLUDES = -I/usr/include/python3.5m


LFLAGS = -Lviterbi -Lradar 
#LFLAGS += 
#LIBS = -lviterbi -lfmcwdist -lpthread -ldl -lutil -lm -lpython2.7
LIBS     = -lviterbi -lfmcwdist -lpthread -ldl -lutil -lm
LIBSG    = -lviterbi_gp -lfmcwdist_gp -lpthread -ldl -lutil -lm
LIBS_IT  = -lviterbi_t -lfmcwdist_t -lpthread -ldl -lutil -lm
FLIBS    = -lviterbiF -lfmcwdist -lpthread -ldl -lutil -lm
FLIBS_IT = -lviterbiF_t -lfmcwdist_t -lpthread -ldl -lutil -lm
#PYTHONLIBS = $(shell /usr/bin/python-config --ldflags)
#PYTHONLIBS = -lpython3.6m
PYTHONLIBS = -lpython3.5m

include Makefile.targets
