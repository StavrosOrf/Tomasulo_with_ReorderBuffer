/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_1242562249;
char *WORK_P_3717103114;
char *IEEE_P_3620187407;
char *WORK_P_3018354187;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_3717103114_init();
    work_p_3018354187_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_2263464102_3212880686_init();
    work_a_0497921607_3212880686_init();
    work_a_0429374410_3212880686_init();
    work_a_0930812050_3212880686_init();
    work_a_2803083696_3212880686_init();
    work_a_2728182937_3212880686_init();
    work_a_3599674430_3212880686_init();
    work_a_2624784515_3212880686_init();
    work_a_1955241509_3212880686_init();
    work_a_1896794281_3212880686_init();
    work_a_2699053519_3212880686_init();
    work_a_0993417039_3212880686_init();
    work_a_1910158702_3212880686_init();
    work_a_4161955146_3212880686_init();
    work_a_0440503809_3212880686_init();
    work_a_2775626099_3212880686_init();
    work_a_0028200735_2372691052_init();


    xsi_register_tops("work_a_0028200735_2372691052");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_3717103114 = xsi_get_engine_memory("work_p_3717103114");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_3018354187 = xsi_get_engine_memory("work_p_3018354187");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
