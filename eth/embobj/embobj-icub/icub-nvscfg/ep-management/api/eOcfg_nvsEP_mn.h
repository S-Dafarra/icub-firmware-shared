/*
 * Copyright (C) 2011 Department of Robotics Brain and Cognitive Sciences - Istituto Italiano di Tecnologia
 * Author:  Marco Accame
 * email:   marco.accame@iit.it
 * website: www.robotcub.org
 * Permission is granted to copy, distribute, and/or modify this program
 * under the terms of the GNU General Public License, version 2 or any
 * later version published by the Free Software Foundation.
 *
 * A copy of the license can be found at
 * http://www.robotcub.org/icub/license/gpl.txt
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
 * Public License for more details
*/

// - include guard ----------------------------------------------------------------------------------------------------

#ifndef _EOCFG_NVSEP_MN_H_
#define _EOCFG_NVSEP_MN_H_




/** @file       eOcfg_nvsEP_mn.h
	@brief      This header file gives the constant configuration for the NVs in the endpoint bodysensors
	@author     marco.accame@iit.it
	@date       04/05/2012
**/

/** @defgroup eo_awerasfdgr234 Configuation of the NVs ...
    Tcecece 
    
    @{		
 **/



// - external dependencies --------------------------------------------------------------------------------------------

#include "EOconstvector.h"
#include "EOarray.h"
#include "EOnv.h"


 

// - public #define  --------------------------------------------------------------------------------------------------
// empty-section



// - declaration of public user-defined types ------------------------------------------------------------------------- 


typedef enum
{
    endpoint_mn_mngmnt                          = 0x0001    /**< used by every board */
} eo_cfg_nvsEP_mn_endpoint_t;

enum { endpoint_mn_TOTALnumber = 1};



/** @typedef    typedef uint16_t eo_cfg_nvsEP_mn_Number_t;
    @brief      It contains an index for a mn in a manner that is independnt from the endpoint.
 **/
typedef uint16_t eo_cfg_nvsEP_mn_Number_t;

enum { mnNumberMAX = 1};



/** @typedef    typedef enum eo_cfg_nvsEP_mc_any_con_bodypart_jointNVindex_t;
    @brief      It contains an index for all the network variables in a joint. The indices are consecutive and without
                holes, so that the enum value can be changed by a normal index.
 **/
typedef enum
{
    mnNVindex__ropsigcfgassign                          =  0,
    mnNVindex__ropsigcfgcommand                         =  1
} eo_cfg_nvsEP_mn_NVindex_t;

enum { mnNVindex_TOTALnumber = 2};




    
// - declaration of extern public variables, ... but better using use _get/_set instead -------------------------------

//const eo_cfg_nvsEP_mngmnt_t *eo_cfg_nvsEP_mngmnt_defaultvalue;


// - declaration of extern public functions ---------------------------------------------------------------------------



/** @fn         extern eOnvID_t eo_cfg_nvsEP_mn_NVID_Get(eo_cfg_nvsEP_mn_NVindex_t nvindex)
    @brief      This function retrieves the eOnvID_t of a network variable with index @e nvindex.
    @param      ep              the endpoint
    @param      n               the mn number (always 0)
    @param      nvindex         the index of the nv inside the endpoint
    @return     the nvid or EOK_uint16dummy in case of failure.
  */
extern eOnvID_t eo_cfg_nvsEP_mn_NVID_Get(eo_cfg_nvsEP_mn_endpoint_t ep, eo_cfg_nvsEP_mn_Number_t n, eo_cfg_nvsEP_mn_NVindex_t nvindex);




/** @}            
    end of group eo_awerasfdgr234  
 **/

#endif  // include-guard


// - end-of-file (leave a blank line after)----------------------------------------------------------------------------






