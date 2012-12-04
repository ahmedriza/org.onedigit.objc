OBJ = hello.o Person.o Employee.o Asset.o
CC = clang
# CFLAGS = -I /GNUstep/GNUstep/System/Library/Headers -std=c99 -fconstant-string-class=NSConstantString
LDFLAGS = -L /GNUstep/GNUstep/System/Library/Libraries -lobjc -lgnustep-base

# gcc -o helloworld helloworld.m -I /GNUstep/GNUstep/System/Library/Headers -L /GNUstep/GNUstep/System/Library/Libraries -std=c99 -lobjc -lgnustep-base -fconstant-string-class=NSConstantString
#
# clang -fobjc-nonfragile-abi -fobjc-arc
#
CFLAGS = -I /GNUstep/GNUstep/System/Library/Headers -fobjc-nonfragile-abi -fobjc-arc

hello.exe: $(OBJ)
	$(CC) -o hello $(OBJ) $(CFLAGS) $(LDFLAGS)

%.o: %.m
	$(CC) $(CFLAGS) -c $<

# hello.o: hello.m
#	$(CC) -c hello.m $(CFLAGS)

clean:
	-rm *.o *.exe
