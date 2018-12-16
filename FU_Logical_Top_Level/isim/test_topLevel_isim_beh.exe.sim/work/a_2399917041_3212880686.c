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
static const char *ng0 = "D:/Xillinx_Projects/Tomasulo_lab1/L_ALU/L_ALU.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_2399917041_3212880686_p_0(char *t0)
{
    char t11[16];
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
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5502);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 5504);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 5506);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5508);
    t3 = (t0 + 3496);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 3400);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(50, ng0);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t12 = (t0 + 5332U);
    t14 = (t0 + 1352U);
    t15 = *((char **)t14);
    t14 = (t0 + 5348U);
    t16 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t11, t13, t12, t15, t14);
    t17 = (t11 + 12U);
    t18 = *((unsigned int *)t17);
    t19 = (1U * t18);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB11;

LAB12:    t21 = (t0 + 3496);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t16, 32U);
    xsi_driver_first_trans_fast(t21);
    goto LAB2;

LAB4:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5332U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5348U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t11, t2, t1, t5, t3);
    t8 = (t11 + 12U);
    t18 = *((unsigned int *)t8);
    t19 = (1U * t18);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB13;

LAB14:    t9 = (t0 + 3496);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5332U);
    t3 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t11, t2, t1);
    t5 = (t11 + 12U);
    t18 = *((unsigned int *)t5);
    t19 = (1U * t18);
    t20 = (32U != t19);
    if (t20 == 1)
        goto LAB15;

LAB16:    t6 = (t0 + 3496);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 32U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB10:;
LAB11:    xsi_size_not_matching(32U, t19, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(32U, t19, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t19, 0);
    goto LAB16;

}

static void work_a_2399917041_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3560);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3416);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2399917041_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2399917041_3212880686_p_0,(void *)work_a_2399917041_3212880686_p_1};
	xsi_register_didat("work_a_2399917041_3212880686", "isim/test_topLevel_isim_beh.exe.sim/work/a_2399917041_3212880686.didat");
	xsi_register_executes(pe);
}
