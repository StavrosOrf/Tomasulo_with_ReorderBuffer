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
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1514564973_3212880686_p_0(char *t0)
{
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1952U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t9 = (69 - 69);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 1832U);
    t8 = *((char **)t5);
    t5 = (t0 + 10848U);
    t18 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t5);
    t19 = (t18 - 0);
    t20 = (t19 * 1);
    t21 = (70U * t20);
    t22 = (0U + t21);
    t23 = (69 - 69);
    t24 = (1U * t23);
    t25 = (t22 + t24);
    t12 = (t0 + 6280);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 70U);
    xsi_driver_first_trans_delta(t12, t25, 70U, 0LL);
    t1 = (t0 + 6120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3912U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t9 = (31 - 31);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t8 + t11);
    t12 = (t0 + 6216);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 32U);
    xsi_driver_first_trans_delta(t12, 0U, 32U, 0LL);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t9 = (4 - 4);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 6216);
    t8 = (t5 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 5U);
    xsi_driver_first_trans_delta(t5, 32U, 5U, 0LL);
    xsi_set_current_line(80, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, 0, 32);
    t2 = (t0 + 6216);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_delta(t2, 37U, 32U, 0LL);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 6216);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 69U, 1, 0LL);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t9 = (69 - 69);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 1352U);
    t8 = *((char **)t5);
    t5 = (t0 + 10816U);
    t18 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t5);
    t19 = (t18 - 0);
    t20 = (t19 * 1);
    t21 = (70U * t20);
    t22 = (0U + t21);
    t23 = (69 - 69);
    t24 = (1U * t23);
    t25 = (t22 + t24);
    t12 = (t0 + 6280);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 70U);
    xsi_driver_first_trans_delta(t12, t25, 70U, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4392U);
    t8 = *((char **)t2);
    t9 = (69 - 69);
    t10 = (t9 * 1U);
    t2 = (t0 + 1832U);
    t12 = *((char **)t2);
    t2 = (t0 + 10848U);
    t18 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t2);
    t19 = (t18 - 0);
    t11 = (t19 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t18);
    t20 = (70U * t11);
    t21 = (0 + t20);
    t22 = (t21 + t10);
    t13 = (t8 + t22);
    t14 = (t0 + 6344);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t26 = (t16 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t13, 70U);
    xsi_driver_first_trans_delta(t14, 0U, 70U, 0LL);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6344);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_delta(t1, 37U, 32U, 0LL);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 6344);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 69U, 1, 0LL);
    goto LAB9;

LAB11:    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t3 = t7;
    goto LAB13;

}

static void work_a_1514564973_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;

LAB0:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1952U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6136);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(101, ng0);
    t4 = (t0 + 1512U);
    t9 = *((char **)t4);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t17 = (t0 + 1512U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)3);
    if (t20 == 1)
        goto LAB16;

LAB17:    t16 = (unsigned char)0;

LAB18:    if (t16 != 0)
        goto LAB14;

LAB15:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1992U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    goto LAB9;

LAB11:    t4 = (t0 + 3592U);
    t12 = *((char **)t4);
    t4 = (t0 + 10928U);
    t13 = (t0 + 3272U);
    t14 = *((char **)t13);
    t13 = (t0 + 10912U);
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t12, t4, t14, t13);
    t8 = t15;
    goto LAB13;

LAB14:    xsi_set_current_line(104, ng0);
    t25 = (t0 + 6408);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)3;
    xsi_driver_first_trans_fast(t25);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3752U);
    t4 = *((char **)t2);
    t30 = (5 - 5);
    t31 = (t30 * 1U);
    t32 = (0 + t31);
    t2 = (t4 + t32);
    t5 = (t0 + 6472);
    t9 = (t5 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 6U);
    xsi_driver_first_trans_delta(t5, 0U, 6U, 0LL);
    goto LAB9;

LAB16:    t17 = (t0 + 3592U);
    t21 = *((char **)t17);
    t17 = (t0 + 10928U);
    t22 = (t0 + 3272U);
    t23 = *((char **)t22);
    t22 = (t0 + 10912U);
    t24 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t21, t17, t23, t22);
    t16 = t24;
    goto LAB18;

}


extern void work_a_1514564973_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1514564973_3212880686_p_0,(void *)work_a_1514564973_3212880686_p_1};
	xsi_register_didat("work_a_1514564973_3212880686", "isim/Reorder_Buffer_isim_beh.exe.sim/work/a_1514564973_3212880686.didat");
	xsi_register_executes(pe);
}
