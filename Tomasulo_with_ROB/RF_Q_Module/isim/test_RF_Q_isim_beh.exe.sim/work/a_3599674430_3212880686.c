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
static const char *ng0 = "D:/Xillinx_Projects/Tomasulo_lab1/Compare_Module/Compare_Module.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );


static void work_a_3599674430_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned char t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t5 = 1;
    if (5U == 5U)
        goto LAB8;

LAB9:    t5 = 0;

LAB10:    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t20 = (t0 + 1032U);
    t22 = *((char **)t20);
    t23 = 1;
    if (5U == 5U)
        goto LAB22;

LAB23:    t23 = 0;

LAB24:    if (t23 != 0)
        goto LAB20;

LAB21:
LAB28:    t34 = (t0 + 3072);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    *((unsigned char *)t38) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t34);

LAB2:    t39 = (t0 + 2992);
    *((int *)t39) = 1;

LAB1:    return;
LAB3:    t15 = (t0 + 3072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 4887);
    t11 = 1;
    if (5U == 5U)
        goto LAB14;

LAB15:    t11 = 0;

LAB16:    t1 = t11;
    goto LAB7;

LAB8:    t6 = 0;

LAB11:    if (t6 < 5U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t3 + t6);
    t7 = (t4 + t6);
    if (*((unsigned char *)t2) != *((unsigned char *)t7))
        goto LAB9;

LAB13:    t6 = (t6 + 1);
    goto LAB11;

LAB14:    t12 = 0;

LAB17:    if (t12 < 5U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t13 = (t9 + t12);
    t14 = (t8 + t12);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB15;

LAB19:    t12 = (t12 + 1);
    goto LAB17;

LAB20:    t26 = (t0 + 1352U);
    t27 = *((char **)t26);
    t28 = *((unsigned char *)t27);
    t29 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, (unsigned char)3, t28);
    t26 = (t0 + 3072);
    t30 = (t26 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = t29;
    xsi_driver_first_trans_fast_port(t26);
    goto LAB2;

LAB22:    t24 = 0;

LAB25:    if (t24 < 5U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t20 = (t21 + t24);
    t25 = (t22 + t24);
    if (*((unsigned char *)t20) != *((unsigned char *)t25))
        goto LAB23;

LAB27:    t24 = (t24 + 1);
    goto LAB25;

LAB29:    goto LAB2;

}


extern void work_a_3599674430_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3599674430_3212880686_p_0};
	xsi_register_didat("work_a_3599674430_3212880686", "isim/test_RF_Q_isim_beh.exe.sim/work/a_3599674430_3212880686.didat");
	xsi_register_executes(pe);
}
