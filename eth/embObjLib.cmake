# Copyright: (C) 2014 iCub Facility, Istituto Italiano di Tecnologia
# Authors: Alberto Cardellino <alberto.cardellino@iit.it>
# CopyPolicy: Released under the terms of the LGPLv2.1 or later, see LGPL.TXT

# Set some useful variable for compiling the library
# This should be included by any CMakeLists.txt aiming to compile
# source file that needs to use the protocol.

if(icub_firmware_shared_embobj_FOUND)
    set(EO_BASE_DIR         ${icub_firmware_shared_embobj_INCLUDE_DIR})
    message("icub_firmware_shared_embobj_FOUND was found")
else()
    set(EO_BASE_DIR             ${CMAKE_SOURCE_DIR}/eth)
    message("icub_firmware_shared_embobj_FOUND was NOT found")
endif()


# list of robot names
set(embObj_robot_list        iCubGenova04 iCubGenova02 )


message("EO_BASE_DIR is ${EO_BASE_DIR}")

# callback --> should not be used here
# set(ICUB_INTERFACE_CORE_FOLDER  ${CMAKE_SOURCE_DIR}/src/core/iCubInterface/)
# set(PATH_TO_CALLBACK        ${CMAKE_SOURCE_DIR}/src/libraries/icubmod/)
# set(NVS_MC_CBK_FOLDER       ${PATH_TO_CALLBACK}/embObjMotionControl/usrcbk/)
# set(NVS_MNGMNT_CBK_FOLDER   ${PATH_TO_CALLBACK}/embObjLib/usrcbk/)
# set(NVS_SENSORS_CBK_FOLDER  ${PATH_TO_CALLBACK}/embObjAnalog/usrcbk/)
# set(NVS_SKIN_CBK_FOLDER     ${PATH_TO_CALLBACK}/embObjSkin/usrcbk/)

# other stuff that should not be here
# set(TRANSCEIVER_FOLDER              ${CMAKE_SOURCE_DIR}/src/libraries/icubmod/embObjLib/ )
# set(EXTRA_FOLDER                        ${CMAKE_CURRENT_SOURCE_DIR}/)

# debug stuff ... needed?
#set(DEBUG_FOLDER            ${EO_BASE_DIR}/embobj/plus/utils)

set(CORE_FOLDER                 ${EO_BASE_DIR}/embobj/core/core)
set(CORE_FOLDER                 ${EO_BASE_DIR}/embobj/core/core)
set(CORE_YEE                    ${EO_BASE_DIR}/embobj/core/exec/yarp/)
set(PATH_TO_EP_SRC              ${EO_BASE_DIR}/robotconfig/v1/eprotocol/ )
set(PROT_FOLDER                 ${EO_BASE_DIR}/embobj/plus/comm-v2/)

# schede varie
set(NVS_TYPES                   ${PROT_FOLDER}/icub/
                                ${PROT_FOLDER}/protocol/api/
                                ${PROT_FOLDER}/protocol/src/
                                ${PROT_FOLDER}/transport/
                                )

set(NVS_EB_SRC_FOLDER           ${PATH_TO_EP_SRC})
set(NVS_MC_SRC_FOLDER           ${PROT_FOLDER}/protocol/src/)
set(NVS_MNGMNT_SRC_FOLDER       ${PROT_FOLDER}/protocol/src/)
set(NVS_SENSORS_SRC_FOLDER      ${PROT_FOLDER}/protocol/src/)
set(NVS_SKIN_SRC_FOLDER         ${PROT_FOLDER}/protocol/src/)





set(embObj_includes             ${BODY_COMMON_FOLDER}
                                ${NVS_TYPES}
                                ${NVS_EB_SRC_FOLDER}
                                ${NVS_MC_SRC_FOLDER}
                                ${NVS_MNGMNT_SRC_FOLDER}
                                ${NVS_SENSORS_SRC_FOLDER}
                                ${NVS_SKIN_SRC_FOLDER}
                                ${CORE_YEE}
                                ${CORE_FOLDER}
                                ${PROT_FOLDER}/prot/
                                ${HAL_API_FOLDER}
                                ${EXTRA_FOLDER}
                                ${YARP_INCLUDE_DIRS}
                                ${iCubDev_INCLUDE_DIRS}		#??
                                ${ICUB_INTERFACE_CORE_FOLDER}
                                ${ICUB_INTERFACE_CORE_FOLDER}/robotInterface
                                ${NVS_SKIN_SRC_FOLDER}
                                ${NVS_MNGMNT_CBK_FOLDER}
                                ${NVS_MC_CBK_FOLDER}
                                ${NVS_SKIN_CBK_FOLDER}
                                ${NVS_SENSORS_CBK_FOLDER}
                                ${CMAKE_SOURCE_DIR}/src/libraries/icubmod/embObjLib/
                                ${CMAKE_SOURCE_DIR}/src/libraries/icubmod/embObjLib/tools/
                                ${CMAKE_SOURCE_DIR}/src/libraries/icubmod/embObjMotionControl/
                                ${CMAKE_SOURCE_DIR}/src/libraries/icubmod/embObjSkin/
                                ${CMAKE_SOURCE_DIR}/src/libraries/icubmod/embObjAnalog/
                                ${TRANSCEIVER_FOLDER}/tools/
                                ${ACE_INCLUDE_DIR}
                                ${CMAKE_SOURCE_DIR}/src/libraries/icubmod/debugStream/
                                ${DEBUG_FOLDER}
                                ${EO_BASE_DIR}/robotconfig/api
                                )

include_directories (${embObj_includes})
