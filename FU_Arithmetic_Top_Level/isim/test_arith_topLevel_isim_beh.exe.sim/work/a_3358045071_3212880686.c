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
static const char *ng0 = "D:/Xillinx_Projects/Tomasulo_lab1/A_ALU/A_ALU.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3358045071_3212880686_p_0(char *t0)
{
    char t11[16];
    char t14[16];
    char t19[16];
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
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5791);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 5793);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 5795);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5797);
    t3 = (t0 + 3616);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 3520);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(56, ng0);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t15 = ((IEEE_P_2592010699) + 4024);
    t16 = (t0 + 5572U);
    t12 = xsi_base_array_concat(t12, t14, t15, (char)99, (unsigned char)2, (char)97, t13, t16, (char)101);
    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t20 = ((IEEE_P_2592010699) + 4024);
    t21 = (t0 + 5588U);
    t17 = xsi_base_array_concat(t17, t19, t20, (char)99, (unsigned char)2, (char)97, t18, t21, (char)101);
    t22 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t12, t14, t17, t19);
    t23 = (t0 + 1968U);
    t24 = *((char **)t23);
    t23 = (t24 + 0);
    t25 = (t11 + 12U);
    t26 = *((unsigned int *)t25);
    t27 = (1U * t26);
    memcpy(t23, t22, t27);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t26 = (32 - 31);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t3 = (t0 + 3616);
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
    t3 = ((IEEE_P_2592010699) + 4024);
    t5 = (t0 + 5572U);
    t1 = xsi_base_array_concat(t1, t14, t3, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (t0 + 1352U);
    t8 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 5588U);
    t6 = xsi_base_array_concat(t6, t19, t9, (char)99, (unsigned char)2, (char)97, t8, t12, (char)101);
    t13 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t11, t1, t14, t6, t19);
    t15 = (t0 + 1968U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    t17 = (t11 + 12U);
    t26 = *((unsigned int *)t17);
    t27 = (1U * t26);
    memcpy(t15, t13, t27);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t26 = (32 - 31);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t3 = (t0 + 3616);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 31U, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t26 = (31 - 30);
    t27 = (t26 * 1U);
    t28 = (0 + t27);
    t1 = (t2 + t28);
    t3 = (t0 + 3616);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 31U);
    xsi_driver_first_trans_delta(t3, 0U, 31U, 0LL);
    goto LAB2;

LAB10:;
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

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3536);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3358045071_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3358045071_3212880686_p_0,(void *)work_a_3358045071_3212880686_p_1};
	xsi_register_didat("work_a_3358045071_3212880686", "isim/test_arith_topLevel_isim_beh.exe.sim/work/a_3358045071_3212880686.didat");
	xsi_register_executes(pe);
}
