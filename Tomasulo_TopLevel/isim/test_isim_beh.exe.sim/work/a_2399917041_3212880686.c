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
static const char *ng0 = "/home/ise/XilinxShareVm/LASTTTTTTTTTTTTTTT/Tomasulo_with_ROB/L_ALU/L_ALU.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439767405979520975_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);


static void work_a_2399917041_3212880686_p_0(char *t0)
{
    char t14[16];
    char t20[16];
    char t28[16];
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
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5698);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 5700);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 5702);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 5704);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5738);
    t3 = (t0 + 3488);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(50, ng0);
    t15 = (t0 + 1192U);
    t16 = *((char **)t15);
    t17 = (31 - 31);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t15 = (t16 + t19);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 31;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 31);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t22 = (t0 + 1352U);
    t25 = *((char **)t22);
    t24 = (31 - 31);
    t26 = (t24 * 1U);
    t27 = (0 + t26);
    t22 = (t25 + t27);
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 31;
    t30 = (t29 + 4U);
    *((int *)t30) = 0;
    t30 = (t29 + 8U);
    *((int *)t30) = -1;
    t31 = (0 - 31);
    t32 = (t31 * -1);
    t32 = (t32 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t32;
    t30 = ieee_p_2592010699_sub_16439767405979520975_503743352(IEEE_P_2592010699, t14, t15, t20, t22, t28);
    t33 = (t14 + 12U);
    t32 = *((unsigned int *)t33);
    t34 = (1U * t32);
    t35 = (32U != t34);
    if (t35 == 1)
        goto LAB13;

LAB14:    t36 = (t0 + 3488);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t30, 32U);
    xsi_driver_first_trans_fast(t36);
    goto LAB2;

LAB4:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5528U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5544U);
    t6 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t14, t2, t1, t5, t3);
    t8 = (t14 + 12U);
    t17 = *((unsigned int *)t8);
    t18 = (1U * t17);
    t35 = (32U != t18);
    if (t35 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 3488);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5528U);
    t3 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t14, t2, t1);
    t5 = (t14 + 12U);
    t17 = *((unsigned int *)t5);
    t18 = (1U * t17);
    t35 = (32U != t18);
    if (t35 == 1)
        goto LAB17;

LAB18:    t6 = (t0 + 3488);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 32U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5706);
    t3 = (t0 + 3488);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB12:;
LAB13:    xsi_size_not_matching(32U, t34, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t18, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t18, 0);
    goto LAB18;

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

LAB0:    xsi_set_current_line(64, ng0);

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


extern void work_a_2399917041_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2399917041_3212880686_p_0,(void *)work_a_2399917041_3212880686_p_1};
	xsi_register_didat("work_a_2399917041_3212880686", "isim/test_isim_beh.exe.sim/work/a_2399917041_3212880686.didat");
	xsi_register_executes(pe);
}
