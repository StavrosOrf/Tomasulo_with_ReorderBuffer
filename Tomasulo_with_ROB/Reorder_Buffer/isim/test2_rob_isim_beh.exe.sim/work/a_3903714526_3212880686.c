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
static const char *ng0 = "C:/Users/Vasilis/Documents/Tomasulo_lab1v2. 3/v2/Tomasulo_lab1/Reorder_Buffer/Reorder_Buffer.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3903714526_3212880686_p_0(char *t0)
{
    char t26[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2152U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 1)
        goto LAB10;

LAB11:    t6 = (unsigned char)0;

LAB12:    if (t6 == 1)
        goto LAB7;

LAB8:    t5 = (unsigned char)0;

LAB9:    if (t5 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4912);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    goto LAB3;

LAB5:    xsi_set_current_line(68, ng0);
    t11 = (t0 + 1512U);
    t15 = *((char **)t11);
    t16 = *((unsigned char *)t15);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB13;

LAB15:
LAB14:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB3;

LAB7:    t11 = (t0 + 1992U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t5 = t14;
    goto LAB9;

LAB10:    t1 = (t0 + 1952U);
    t10 = xsi_signal_has_event(t1);
    t6 = t10;
    goto LAB12;

LAB13:    xsi_set_current_line(69, ng0);
    t11 = (t0 + 3112U);
    t18 = *((char **)t11);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)3);
    if (t20 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB14;

LAB16:    xsi_set_current_line(70, ng0);
    t11 = (t0 + 1032U);
    t21 = *((char **)t11);
    t11 = (t0 + 4992);
    t22 = (t11 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t21, 32U);
    xsi_driver_first_trans_delta(t11, 0U, 32U, 0LL);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992);
    t7 = (t1 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 5U);
    xsi_driver_first_trans_delta(t1, 32U, 5U, 0LL);
    xsi_set_current_line(72, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t26, 0, 32);
    t2 = (t0 + 4992);
    t7 = (t2 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t1, 32U);
    xsi_driver_first_trans_delta(t2, 37U, 32U, 0LL);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 4992);
    t2 = (t1 + 56U);
    t7 = *((char **)t2);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 69U, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t1 = (t0 + 8788U);
    t27 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t1);
    t28 = (t27 - 0);
    t29 = (t28 * 1);
    t30 = (70U * t29);
    t31 = (0U + t30);
    t11 = (t0 + 5056);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t18 = (t15 + 56U);
    t21 = *((char **)t18);
    memcpy(t21, t2, 70U);
    xsi_driver_first_trans_delta(t11, t31, 70U, 0LL);
    goto LAB17;

LAB19:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2952U);
    t7 = *((char **)t1);
    t1 = (t0 + 1832U);
    t11 = *((char **)t1);
    t1 = (t0 + 8820U);
    t27 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t11, t1);
    t28 = (t27 - 0);
    t29 = (t28 * 1);
    t30 = (70U * t29);
    t31 = (0U + t30);
    t12 = (t0 + 5056);
    t15 = (t12 + 56U);
    t18 = *((char **)t15);
    t21 = (t18 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 70U);
    xsi_driver_first_trans_delta(t12, t31, 70U, 0LL);
    goto LAB20;

}


extern void work_a_3903714526_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3903714526_3212880686_p_0};
	xsi_register_didat("work_a_3903714526_3212880686", "isim/test2_rob_isim_beh.exe.sim/work/a_3903714526_3212880686.didat");
	xsi_register_executes(pe);
}
