#===------------------------------------------------------------------------===#
#
#                     The KLEE Symbolic Virtual Machine
#
# This file is distributed under the University of Illinois Open Source
# License. See LICENSE.TXT for details.
#
#===------------------------------------------------------------------------===#
add_executable(klee
  main.cpp
)

set(KLEE_LIBS
  kleeCore
)

target_include_directories(klee PUBLIC
    # ${SVF_ROOT_DIR}/include
    ${DG_ROOT_DIR}/include
    ${DG_ROOT_DIR}/lib
    ${DG_ROOT_DIR}/tools/include
)

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

target_link_libraries(klee 
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
    ${KLEE_LIBS}
    ${llvm_analysis}
)

install(TARGETS klee RUNTIME DESTINATION bin)

# The KLEE binary depends on the runtimes
add_dependencies(klee BuildKLEERuntimes)
