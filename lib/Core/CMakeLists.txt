#===------------------------------------------------------------------------===#
#
#                     The KLEE Symbolic Virtual Machine
#
# This file is distributed under the University of Illinois Open Source
# License. See LICENSE.TXT for details.
#
#===------------------------------------------------------------------------===#
klee_add_component(kleeCore
  AddressSpace.cpp
  MergeHandler.cpp
  CallPathManager.cpp
  Context.cpp
  CoreStats.cpp
  ExecutionState.cpp
  Executor.cpp
  ExecutorTimers.cpp
  ExecutorUtil.cpp
  ExternalDispatcher.cpp
  ImpliedValue.cpp
  Memory.cpp
  MemoryManager.cpp
  PTree.cpp
  Searcher.cpp
  SeedInfo.cpp
  SpecialFunctionHandler.cpp
  StatsTracker.cpp
  TimingSolver.cpp
  UserSearcher.cpp
)

# TODO: Work out what the correct LLVM components are for
# kleeCore.
set(LLVM_COMPONENTS
  core
  executionengine
  mcjit
  native
  support
)

klee_get_llvm_libs(LLVM_LIBS ${LLVM_COMPONENTS})

# find_library(SVF_LIB Svf HINTS ${SVF_ROOT_DIR}/Release-build/lib)
# find_library(CUDD_LIB Cudd HINTS ${SVF_ROOT_DIR}/Release-build/lib/CUDD)

find_library(DGCDA_LIB dgcda HINTS ${DG_ROOT_DIR}/build/lib)
find_library(DGPTA_LIB dgpta HINTS ${DG_ROOT_DIR}/build/lib)
find_library(DGDDA_LIB dgdda HINTS ${DG_ROOT_DIR}/build/lib)
find_library(DGVRA_LIB dgvra HINTS ${DG_ROOT_DIR}/build/lib)


find_library(DGLLVMPTA_LIB dgllvmpta HINTS ${DG_ROOT_DIR}/build/lib)
find_library(DGLLVMCDA_LIB dgllvmcda HINTS ${DG_ROOT_DIR}/build/lib)
find_library(DGLLVMDDA_LIB dgllvmdda HINTS ${DG_ROOT_DIR}/build/lib)
find_library(DGANALYSIS_LIB dganalysis HINTS ${DG_ROOT_DIR}/build/lib)
find_library(DGLLVMDG_LIB dgllvmdg HINTS ${DG_ROOT_DIR}/build/lib)
find_library(DGLLVMVRA_LIB dgllvmvra HINTS ${DG_ROOT_DIR}/build/lib)
find_library(DGLLVMSLICER_LIB dgllvmslicer HINTS ${DG_ROOT_DIR}/build/tools)
# find_library(DGLLVMTHREADREGIONS_LIB dgllvmthreadregions HINTS ${DG_ROOT_DIR}/build/tools)

target_include_directories(kleeCore PUBLIC
  # ${SVF_ROOT_DIR}/include
  ${DG_ROOT_DIR}/include
  ${DG_ROOT_DIR}/lib
  ${DG_ROOT_DIR}/tools/include
)

target_link_libraries(kleeCore PUBLIC 
  ${LLVM_LIBS} 
  ${SQLITE3_LIBRARIES}
  # ${SVF_LIB}
  # ${CUDD_LIB}
  ${llvm_irreader}
  ${llvm_bitwriter}
  ${DGCDA_LIB}
  ${DGPTA_LIB}
  ${DGDDA_LIB}
  ${DGVRA_LIB}
  ${DGLLVMPTA_LIB}
  ${DGLLVMCDA_LIB}
  ${DGLLVMDDA_LIB}
  ${DGANALYSIS_LIB}
  ${DGLLVMDG_LIB}
  ${DGLLVMVRA_LIB}
  ${DGLLVMSLICER_LIB}
  dgllvmthreadregions
  dgllvmforkjoin
  ${llvm}
  ${llvm_analysis}
)

target_link_libraries(kleeCore PRIVATE
  kleeBasic
  kleeModule
  kleaverSolver
  kleaverExpr
  kleeSupport
)
