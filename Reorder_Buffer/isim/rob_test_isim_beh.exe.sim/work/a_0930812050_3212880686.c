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
static const char *ng0 = "E:/Xillinx projects/Tomasulo_lab1v2. 3/v2/Tomasulo_lab1/Register_Q/Register_Q.vhd";



static void work_a_0930812050_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)2);
    if (t4 != 0)
        goto LAB17;

LAB18:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 992U);
    t4 = xsi_signal_has_event(t2);
    if (t4 == 1)
        goto LAB31;

LAB32:    t1 = (unsigned char)0;

LAB33:    if (t1 != 0)
        goto LAB28;

LAB30:
LAB29:
LAB3:    t2 = (t0 + 3152);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1352U);
    t10 = *((char **)t2);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB11;

LAB12:    t9 = (unsigned char)0;

LAB13:    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t15 = (t0 + 1512U);
    t19 = *((char **)t15);
    t15 = (t0 + 3232);
    t20 = (t15 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t19, 5U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB9;

LAB11:    t2 = (t0 + 992U);
    t14 = xsi_signal_has_event(t2);
    if (t14 == 1)
        goto LAB14;

LAB15:    t13 = (unsigned char)0;

LAB16:    t9 = t13;
    goto LAB13;

LAB14:    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t18 = (t17 == (unsigned char)3);
    t13 = t18;
    goto LAB16;

LAB17:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB22;

LAB23:    t5 = (unsigned char)0;

LAB24:    if (t5 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB3;

LAB19:    xsi_set_current_line(56, ng0);
    t10 = (t0 + 1512U);
    t16 = *((char **)t10);
    t10 = (t0 + 3232);
    t19 = (t10 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t16, 5U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB20;

LAB22:    t2 = (t0 + 992U);
    t11 = xsi_signal_has_event(t2);
    if (t11 == 1)
        goto LAB25;

LAB26:    t9 = (unsigned char)0;

LAB27:    t5 = t9;
    goto LAB24;

LAB25:    t10 = (t0 + 1032U);
    t15 = *((char **)t10);
    t12 = *((unsigned char *)t15);
    t13 = (t12 == (unsigned char)3);
    t9 = t13;
    goto LAB27;

LAB28:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 5244);
    t15 = (t0 + 3232);
    t16 = (t15 + 56U);
    t19 = *((char **)t16);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t3, 5U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB29;

LAB31:    t3 = (t0 + 1032U);
    t6 = *((char **)t3);
    t5 = *((unsigned char *)t6);
    t7 = (t5 == (unsigned char)3);
    t1 = t7;
    goto LAB33;

}


extern void work_a_0930812050_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0930812050_3212880686_p_0};
	xsi_register_didat("work_a_0930812050_3212880686", "isim/rob_test_isim_beh.exe.sim/work/a_0930812050_3212880686.didat");
	xsi_register_executes(pe);
}
