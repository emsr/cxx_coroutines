
CXX = $(HOME)/bin_coroutines/bin/g++ -std=c++17 -fcoroutines -g

BIN_DIR = bin

EXES = \
  $(BIN_DIR)/co-await-0-triv \
  $(BIN_DIR)/co-await-1-value \
  $(BIN_DIR)/co-await-2-xform \
  $(BIN_DIR)/co-await-3-rhs-op \
  $(BIN_DIR)/co-await-4-control-flow \
  $(BIN_DIR)/co-await-5-loop \
  $(BIN_DIR)/co-await-6-ovl \
  $(BIN_DIR)/co-ret-3 \
  $(BIN_DIR)/co-ret-4 \
  $(BIN_DIR)/co-ret-5 \
  $(BIN_DIR)/co-ret-6 \
  $(BIN_DIR)/co-ret-7 \
  $(BIN_DIR)/co-ret-void-is-ready \
  $(BIN_DIR)/co-ret-void-is-suspend \
  $(BIN_DIR)/co-yield-0-triv \
  $(BIN_DIR)/co-yield-1-multi \
  $(BIN_DIR)/co-yield-2-loop

all: $(BIN_DIR) \
  $(BIN_DIR)/co-await-0-triv \
  $(BIN_DIR)/co-await-1-value \
  $(BIN_DIR)/co-await-2-xform \
  $(BIN_DIR)/co-await-3-rhs-op \
  $(BIN_DIR)/co-await-4-control-flow \
  $(BIN_DIR)/co-await-5-loop \
  $(BIN_DIR)/co-await-6-ovl \
  $(BIN_DIR)/co-ret-3 \
  $(BIN_DIR)/co-ret-4 \
  $(BIN_DIR)/co-ret-5 \
  $(BIN_DIR)/co-ret-6 \
  $(BIN_DIR)/co-ret-7 \
  $(BIN_DIR)/co-ret-void-is-ready \
  $(BIN_DIR)/co-ret-void-is-suspend \
  $(BIN_DIR)/coro-auto-fn \
  $(BIN_DIR)/coro-await-context-auto-fn \
  $(BIN_DIR)/coro-bad-return \
  $(BIN_DIR)/coro-builtins \
  $(BIN_DIR)/coro-constexpr-fn \
  $(BIN_DIR)/coro-context-ctor-dtor \
  $(BIN_DIR)/coro-context-main \
  $(BIN_DIR)/coro-context-vararg \
  $(BIN_DIR)/coro-missing-gro \
  $(BIN_DIR)/coro-missing-promise-yield \
  $(BIN_DIR)/coro-missing-ret-value \
  $(BIN_DIR)/coro-missing-ret-void \
  $(BIN_DIR)/coro-pre-proc.o \
  $(BIN_DIR)/co-yield-0-triv \
  $(BIN_DIR)/co-yield-1-multi \
  $(BIN_DIR)/co-yield-2-loop \
  $(BIN_DIR)/co-yield-syntax-1 \
  $(BIN_DIR)/co-yield-syntax-2 \
  $(BIN_DIR)/co-yield-syntax-3

$(BIN_DIR)/co-await-0-triv: testsuite/torture/co-await-0-triv.C
	$(CXX) -o $(BIN_DIR)/co-await-0-triv testsuite/torture/co-await-0-triv.C

$(BIN_DIR)/co-await-1-value: testsuite/torture/co-await-1-value.C
	$(CXX) -o $(BIN_DIR)/co-await-1-value testsuite/torture/co-await-1-value.C

$(BIN_DIR)/co-await-2-xform: testsuite/torture/co-await-2-xform.C
	$(CXX) -o $(BIN_DIR)/co-await-2-xform testsuite/torture/co-await-2-xform.C

$(BIN_DIR)/co-await-3-rhs-op: testsuite/torture/co-await-3-rhs-op.C
	$(CXX) -o $(BIN_DIR)/co-await-3-rhs-op testsuite/torture/co-await-3-rhs-op.C

$(BIN_DIR)/co-await-4-control-flow: testsuite/torture/co-await-4-control-flow.C
	$(CXX) -o $(BIN_DIR)/co-await-4-control-flow testsuite/torture/co-await-4-control-flow.C

$(BIN_DIR)/co-await-5-loop: testsuite/torture/co-await-5-loop.C
	$(CXX) -o $(BIN_DIR)/co-await-5-loop testsuite/torture/co-await-5-loop.C

$(BIN_DIR)/co-await-6-ovl: testsuite/torture/co-await-6-ovl.C
	$(CXX) -o $(BIN_DIR)/co-await-6-ovl testsuite/torture/co-await-6-ovl.C

$(BIN_DIR)/co-ret-3: testsuite/torture/co-ret-3.C
	$(CXX) -o $(BIN_DIR)/co-ret-3 testsuite/torture/co-ret-3.C

$(BIN_DIR)/co-ret-4: testsuite/torture/co-ret-4.C
	$(CXX) -o $(BIN_DIR)/co-ret-4 testsuite/torture/co-ret-4.C

$(BIN_DIR)/co-ret-5: testsuite/torture/co-ret-5.C
	$(CXX) -o $(BIN_DIR)/co-ret-5 testsuite/torture/co-ret-5.C

$(BIN_DIR)/co-ret-6: testsuite/torture/co-ret-6.C
	$(CXX) -o $(BIN_DIR)/co-ret-6 testsuite/torture/co-ret-6.C

$(BIN_DIR)/co-ret-7: testsuite/torture/co-ret-7.C
	$(CXX) -o $(BIN_DIR)/co-ret-7 testsuite/torture/co-ret-7.C

$(BIN_DIR)/co-ret-void-is-ready: testsuite/torture/co-ret-void-is-ready.C
	$(CXX) -o $(BIN_DIR)/co-ret-void-is-ready testsuite/torture/co-ret-void-is-ready.C

$(BIN_DIR)/co-ret-void-is-suspend: testsuite/torture/co-ret-void-is-suspend.C
	$(CXX) -o $(BIN_DIR)/co-ret-void-is-suspend testsuite/torture/co-ret-void-is-suspend.C

$(BIN_DIR)/coro-auto-fn: testsuite/coro-auto-fn.C
	$(CXX) -fsyntax-only -w testsuite/coro-auto-fn.C

$(BIN_DIR)/coro-await-context-auto-fn: testsuite/coro-await-context-auto-fn.C
	$(CXX) -fsyntax-only -w testsuite/coro-await-context-auto-fn.C

$(BIN_DIR)/coro-builtins: testsuite/coro-builtins.C
	$(CXX) -fsyntax-only testsuite/coro-builtins.C

$(BIN_DIR)/coro-bad-return: testsuite/coro-bad-return.C
	$(CXX) -fsyntax-only testsuite/coro-bad-return.C

$(BIN_DIR)/coro-constexpr-fn: testsuite/coro-constexpr-fn.C
	$(CXX) -fsyntax-only -w testsuite/coro-constexpr-fn.C

$(BIN_DIR)/coro-context-ctor-dtor: testsuite/coro-context-ctor-dtor.C
	$(CXX) -fsyntax-only -w testsuite/coro-context-ctor-dtor.C

$(BIN_DIR)/coro-context-main: testsuite/coro-context-main.C
	$(CXX) -fsyntax-only -w testsuite/coro-context-main.C

$(BIN_DIR)/coro-context-vararg: testsuite/coro-context-vararg.C
	$(CXX) -fsyntax-only -w testsuite/coro-context-vararg.C

$(BIN_DIR)/coro-missing-ret-void: testsuite/coro-missing-ret-void.C
	$(CXX) -fsyntax-only -w testsuite/coro-missing-ret-void.C

$(BIN_DIR)/coro-missing-gro: testsuite/coro-missing-gro.C
	$(CXX) -fsyntax-only -w testsuite/coro-missing-gro.C

$(BIN_DIR)/coro-missing-promise-yield: testsuite/coro-missing-promise-yield.C
	$(CXX) -fsyntax-only -w testsuite/coro-missing-promise-yield.C

$(BIN_DIR)/coro-missing-ret-value: testsuite/coro-missing-ret-value.C
	$(CXX) -fsyntax-only -w testsuite/coro-missing-ret-value.C

$(BIN_DIR)/coro-pre-proc.o: testsuite/coro-pre-proc.C
	$(CXX) -c -o $(BIN_DIR)/coro-pre-proc.o testsuite/coro-pre-proc.C

$(BIN_DIR)/co-yield-0-triv: testsuite/torture/co-yield-0-triv.C
	$(CXX) -o $(BIN_DIR)/co-yield-0-triv testsuite/torture/co-yield-0-triv.C

$(BIN_DIR)/co-yield-1-multi: testsuite/torture/co-yield-1-multi.C
	$(CXX) -o $(BIN_DIR)/co-yield-1-multi testsuite/torture/co-yield-1-multi.C

$(BIN_DIR)/co-yield-2-loop: testsuite/torture/co-yield-2-loop.C
	$(CXX) -o $(BIN_DIR)/co-yield-2-loop testsuite/torture/co-yield-2-loop.C

$(BIN_DIR)/co-yield-syntax-1: testsuite/co-yield-syntax-1.C
	$(CXX) -fsyntax-only -w testsuite/co-yield-syntax-1.C

$(BIN_DIR)/co-yield-syntax-2: testsuite/co-yield-syntax-2.C
	$(CXX) -fsyntax-only -w testsuite/co-yield-syntax-2.C

$(BIN_DIR)/co-yield-syntax-3: testsuite/co-yield-syntax-3.C
	$(CXX) -fsyntax-only -w testsuite/co-yield-syntax-3.C


test: $(EXES)
	./$(BIN_DIR)/co-await-0-triv > output/co-await-0-triv.txt
	./$(BIN_DIR)/co-await-1-value > output/co-await-1-value.txt
	./$(BIN_DIR)/co-await-2-xform > output/co-await-2-xform.txt
	./$(BIN_DIR)/co-await-3-rhs-op > output/co-await-3-rhs-op.txt
	./$(BIN_DIR)/co-await-4-control-flow > output/co-await-4-control-flow.txt
	./$(BIN_DIR)/co-await-5-loop > output/co-await-5-loop.txt
	./$(BIN_DIR)/co-await-6-ovl > output/co-await-6-ovl.txt
	./$(BIN_DIR)/co-ret-3 > output/co-ret-3.txt
	./$(BIN_DIR)/co-ret-4 > output/co-ret-4.txt
	./$(BIN_DIR)/co-ret-5 > output/co-ret-5.txt
	./$(BIN_DIR)/co-ret-6 > output/co-ret-6.txt
	./$(BIN_DIR)/co-ret-7 > output/co-ret-7.txt
	./$(BIN_DIR)/co-ret-void-is-ready > output/co-ret-void-is-ready.txt
	./$(BIN_DIR)/co-yield-0-triv > output/co-yield-0-triv.txt
	./$(BIN_DIR)/co-yield-1-multi > output/co-yield-1-multi.txt
	./$(BIN_DIR)/co-yield-2-loop > output/co-yield-2-loop.txt


clean:
	rm -rf $(BIN_DIR)/*


$(BIN_DIR):
	if test ! -d $(BIN_DIR); then \
	  mkdir $(BIN_DIR); \
	fi
