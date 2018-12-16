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
static const char *ng0 = "/home/ise/XilinxShareVm/LASTTTTTTTTTTTTTTT/Tomasulo_with_ROB/A_ALU/A_ALU.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3358045071_3212880686_p_0(char *t0)
{
    char t14[16];
    char t17[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6019);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 6021);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 6023);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 6025);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 6027);
    t3 = (t0 + 3608);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 3512);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(56, ng0);
    t15 = (t0 + 1192U);
    t16 = *((char **)t15);
    t18 = ((IEEE_P_2592010699) + 4000);
    t19 = (t0 + 5800U);
    t15 = xsi_base_array_concat(t15, t17, t18, (char)99, (unsigned char)2, (char)97, t16, t19, (char)101);
    t20 = (t0 + 1352U);
    t21 = *((char **)t20);
    t23 = ((IEEE_P_2592010699) + 4000);
    t24 = (t0 + 5816U);
    t20 = xsi_base_array_concat(t20, t22, t23, (char)99, (unsigned char)2, (char)97, t21, t24, (char)101);
    t25 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t14, t15, t17, t20, t22);
    t26 = (t0 + 1968U);
    t27 = *((char **)t26);
    t26 = (t27 + 0);
    t28 = (t14 + 12U);
    t29 = *((unsigned int *)t28);
    t30 = (1U * t29);
    memcpy(t26, t25, t30);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t29 = (32 - 31);
    t30 = (t29 * 1U);
    t31 = (0 + t30);
    t1 = (t2 + t31);
    t3 = (t0 + 3608);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB4:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 5800U);
    t1 = xsi_base_array_concat(t1, t17, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1352U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4000);
    t11 = (t0 + 5816U);
    t6 = xsi_base_array_concat(t6, t22, t9, (char)99, (unsigned char)2, (char)97, t8, t11, (char)101);
    t12 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t14, t1, t17, t6, t22);
    t15 = (t0 + 1968U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    t18 = (t14 + 12U);
    t29 = *((unsigned int *)t18);
    t30 = (1U * t29);
    memcpy(t15, t12, t30);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t29 = (32 - 31);
    t30 = (t29 * 1U);
    t31 = (0 + t30);
    t1 = (t2 + t31);
    t3 = (t0 + 3608);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3608);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 31U, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t29 = (31 - 30);
    t30 = (t29 * 1U);
    t31 = (0 + t30);
    t1 = (t2 + t31);
    t3 = (t0 + 3608);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 31U);
    xsi_driver_first_trans_delta(t3, 0U, 31U, 0LL);
    goto LAB2;

LAB6:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 3608);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 31U, 1, 0LL);
    goto LAB2;

LAB12:;
}

static void work_a_3358045071_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(74, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3672);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3528);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3358045071_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3358045071_3212880686_p_0,(void *)work_a_3358045071_3212880686_p_1};
	xsi_register_didat("work_a_3358045071_3212880686", "isim/test_isim_beh.exe.sim/work/a_3358045071_3212880686.didat");
	xsi_register_executes(pe);
}
