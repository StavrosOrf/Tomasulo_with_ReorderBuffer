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
static const char *ng0 = "/home/ise/XilinxShareVm/LASTTTTTTTTTTTTTTT/Tomasulo_with_ROB/Tomasulo_TopLevel/counter_standard.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_4233394932_3212880686_p_0(char *t0)
{
    char t15[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 != (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(48, ng0);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t15, 0, 32);
    t2 = (t0 + 3488);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t1, 32U);
    xsi_driver_first_trans_fast(t2);

LAB3:    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1312U);
    t7 = xsi_signal_has_event(t1);
    if (t7 == 1)
        goto LAB11;

LAB12:    t6 = (unsigned char)0;

LAB13:    if (t6 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3488);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(43, ng0);
    t8 = (t0 + 1672U);
    t16 = *((char **)t8);
    t8 = (t0 + 5800U);
    t18 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t17, 4, 32);
    t19 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t15, t16, t8, t18, t17);
    t20 = (t15 + 12U);
    t21 = *((unsigned int *)t20);
    t22 = (1U * t21);
    t23 = (32U != t22);
    if (t23 == 1)
        goto LAB14;

LAB15:    t24 = (t0 + 3488);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t19, 32U);
    xsi_driver_first_trans_fast(t24);
    goto LAB6;

LAB8:    t8 = (t0 + 1032U);
    t12 = *((char **)t8);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t5 = t14;
    goto LAB10;

LAB11:    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t6 = t11;
    goto LAB13;

LAB14:    xsi_size_not_matching(32U, t22, 0);
    goto LAB15;

}

static void work_a_4233394932_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3408);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4233394932_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4233394932_3212880686_p_0,(void *)work_a_4233394932_3212880686_p_1};
	xsi_register_didat("work_a_4233394932_3212880686", "isim/test_isim_beh.exe.sim/work/a_4233394932_3212880686.didat");
	xsi_register_executes(pe);
}
