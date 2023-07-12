ICSE2024-BCDSE
=============================
An extension of KLEE (http://klee.github.io). 
## Running via cmake
### Build
Install Dependences
```
$ sudo apt-get install build-essential curl libcap-dev git cmake libncurses5-dev python-minimal python-pip unzip libtcmalloc-minimal4 libgoogle-perftools-dev libsqlite3-dev doxygen clang llvm
$ pip3 install tabulate wllvm
```
Build DG (Dependence Collect)
* https://github.com/mchalupa/dg.git

Build BCDSE:
```
mkdir klee_build
cd klee_build
CXXFLAGS="-fno-rtti" cmake \
    -DENABLE_SOLVER_Z3=ON \
    -DENABLE_POSIX_RUNTIME=ON \
    -DENABLE_KLEE_UCLIBC=ON \
    -DKLEE_UCLIBC_PATH=<KLEE_UCLIBC_DIR> \
    -DLLVM_CONFIG_BINARY=<LLVM_CONFIG_PATH> \
    -DENABLE_UNIT_TESTS=OFF \
    -DKLEE_RUNTIME_BUILD_TYPE=Release+Asserts \
    -DENABLE_SYSTEM_TESTS=ON \
    -DDG_ROOT_DIR=<DG_PROJECT_DIR> \
    <KLEE_ROOT_DIR>
make
```

Notes:
* Use llvm-config from the CMake build
* Use klee-uclibc from [here](https://github.com/klee/klee-uclibc.git)

## Running in docker(Recommended)
### Getting Started 
We have packaged all the environment and configuration related to the experiment into a docker image and uploaded it to the *dockerHub*. The only thing you need to do is pull it to your local machine.
```
$ docker pull bcdse/popl_2024:v1
$ docker run --rm -ti --ulimit='stack=-1:-1' bcdse/popl_2024:v1
```

### Experiment replay
We designed four experiments to verify the effectiveness of BCGSE. For the experiment of reproduction, you can go to the ```/paper``` directory, and experimental-related tools, as well as benchmark are available under the fold.

#### To run the whole experiment
```
$ cd /paper/benchmark/
$ python3 set.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.

#### To run the **Validity** experiment
```
$ cd /paper/benchmark/validity
$ python3 init.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.

#### To run the **SIR** experiment
```
$ cd /paper/benchmark/efficacy
$ python3 init.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.

#### To run the **Coreutils** experiment
```
$ cd /paper/benchmark/efficiency
$ python3 init.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.

#### To run the **CVE** experiment
```
$ cd /paper/benchmark/repetition
$ python3 init.py clean
```
Delete the parameter *`clean`* if you want to keep the intermediate result.
