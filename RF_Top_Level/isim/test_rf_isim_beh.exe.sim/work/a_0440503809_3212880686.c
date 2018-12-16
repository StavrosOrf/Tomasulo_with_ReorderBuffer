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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Xillinx_Projects/Tomasulo_lab1/Q_Match_Module/Q_Match_Module.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_0440503809_3212880686_p_0(char *t0)
{
    char t30[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 5169);
    t3 = (t0 + 3136);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5174);
    *((int *)t1) = 1;
    t2 = (t0 + 5178);
    *((int *)t2) = 31;
    t8 = 1;
    t9 = 31;

LAB2:    if (t8 <= t9)
        goto LAB3;

LAB5:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t10 = (4 - 4);
    t11 = (t10 * 1U);
    t3 = (t0 + 5174);
    t12 = *((int *)t3);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, *((int *)t3));
    t15 = (5U * t14);
    t16 = (0 + t15);
    t17 = (t16 + t11);
    t5 = (t4 + t17);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t18 = (4 - 4);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t6 = (t7 + t20);
    t21 = 1;
    if (5U == 5U)
        goto LAB9;

LAB10:    t21 = 0;

LAB11:    if (t21 != 0)
        goto LAB6;

LAB8:
LAB7:
LAB4:    t1 = (t0 + 5174);
    t8 = *((int *)t1);
    t2 = (t0 + 5178);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB5;

LAB15:    t12 = (t8 + 1);
    t8 = t12;
    t3 = (t0 + 5174);
    *((int *)t3) = t8;
    goto LAB2;

LAB6:    xsi_set_current_line(54, ng0);
    t25 = (t0 + 3072);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t25);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5174);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t30, *((int *)t1), 5);
    t3 = (t0 + 3136);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB7;

LAB9:    t22 = 0;

LAB12:    if (t22 < 5U)
        goto LAB13;
    else
        goto LAB11;

LAB13:    t23 = (t5 + t22);
    t24 = (t6 + t22);
    if (*((unsigned char *)t23) != *((unsigned char *)t24))
        goto LAB10;

LAB14:    t22 = (t22 + 1);
    goto LAB12;

}


extern void work_a_0440503809_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0440503809_3212880686_p_0};
	xsi_register_didat("work_a_0440503809_3212880686", "isim/test_rf_isim_beh.exe.sim/work/a_0440503809_3212880686.didat");
	xsi_register_executes(pe);
}
