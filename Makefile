
CXX = $(HOME)/bin_coroutines/bin/g++ -std=c++17 -fcoroutines -g -I$(HOME)/gcc_coroutines/gcc/testsuite/g++.dg/coroutines

all: \
  co-ret-void-is-ready \
  co-ret-void-is-suspend \
  co-ret-3 \
  co-ret-4 \
  co-ret-5 \
  co-ret-6 \
  co-ret-7 \
  coro-auto-fn \
  coro-await-context-auto-fn \
  coro-builtins \
  coro-constexpr-fn \
  coro-context-ctor-dtor \
  coro-context-main \
  coro-context-vararg \
  coro-missing-ret-void \
  coro-pre-proc.o

co-ret-void-is-ready: co-ret-void-is-ready.C
	$(CXX) -o co-ret-void-is-ready co-ret-void-is-ready.C

co-ret-void-is-suspend: co-ret-void-is-suspend.C
	$(CXX) -o co-ret-void-is-suspend co-ret-void-is-suspend.C

co-ret-3: co-ret-3.C
	$(CXX) -o co-ret-3 co-ret-3.C

co-ret-4: co-ret-4.C
	$(CXX) -o co-ret-4 co-ret-4.C

co-ret-5: co-ret-5.C
	$(CXX) -o co-ret-5 co-ret-5.C

co-ret-6: co-ret-6.C
	$(CXX) -o co-ret-6 co-ret-6.C

co-ret-7: co-ret-7.C
	$(CXX) -o co-ret-7 co-ret-7.C

coro-auto-fn: coro-auto-fn.C
	$(CXX) -fsyntax-only -w coro-auto-fn.C

coro-await-context-auto-fn: coro-await-context-auto-fn.C
	$(CXX) -fsyntax-only -w coro-await-context-auto-fn.C

coro-builtins: coro-builtins.C
	$(CXX) -fsyntax-only coro-builtins.C

coro-constexpr-fn: coro-constexpr-fn.C
	$(CXX) -fsyntax-only -w coro-constexpr-fn.C

coro-context-ctor-dtor: coro-context-ctor-dtor.C
	$(CXX) -fsyntax-only -w coro-context-ctor-dtor.C

coro-context-main: coro-context-main.C
	$(CXX) -fsyntax-only -w coro-context-main.C

coro-context-vararg: coro-context-vararg.C
	$(CXX) -fsyntax-only -w coro-context-vararg.C

coro-missing-ret-void: coro-missing-ret-void.C
	$(CXX) -fsyntax-only -w coro-missing-ret-void.C

coro-pre-proc.o: coro-pre-proc.C
	$(CXX) -c coro-pre-proc.C
