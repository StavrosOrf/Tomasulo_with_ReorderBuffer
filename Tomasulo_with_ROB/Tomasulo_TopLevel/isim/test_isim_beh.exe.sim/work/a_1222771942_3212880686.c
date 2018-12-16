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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/XilinxShareVm/LASTTTTTTTTTTTTTTT/Tomasulo_with_ROB/Register_FU/Register_FU.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );


static void work_a_1222771942_3212880686_p_0(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(60, ng0);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t20, 0, 5);
    t2 = (t0 + 4184);
    t6 = (t2 + 56U);
    t11 = *((char **)t6);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t1, 5U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(61, ng0);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t20, 0, 32);
    t2 = (t0 + 4248);
    t6 = (t2 + 56U);
    t11 = *((char **)t6);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t1, 32U);
    xsi_driver_first_trans_fast_port(t2);

LAB3:    t1 = (t0 + 4104);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t11 = (t0 + 1352U);
    t15 = *((char **)t11);
    t11 = (t0 + 4184);
    t16 = (t11 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t15, 5U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4248);
    t6 = (t1 + 56U);
    t11 = *((char **)t6);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4312);
    t6 = (t1 + 56U);
    t11 = *((char **)t6);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    *((unsigned char *)t15) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4376);
    t6 = (t1 + 56U);
    t11 = *((char **)t6);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

LAB8:    t1 = (t0 + 1152U);
    t10 = xsi_signal_has_event(t1);
    if (t10 == 1)
        goto LAB11;

LAB12:    t9 = (unsigned char)0;

LAB13:    t5 = t9;
    goto LAB10;

LAB11:    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t9 = t14;
    goto LAB13;

}


extern void work_a_1222771942_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1222771942_3212880686_p_0};
	xsi_register_didat("work_a_1222771942_3212880686", "isim/test_isim_beh.exe.sim/work/a_1222771942_3212880686.didat");
	xsi_register_executes(pe);
}
