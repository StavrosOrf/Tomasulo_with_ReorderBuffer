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
static const char *ng0 = "E:/Xillinx projects/Tomasulo_lab1v2. 3/v2/Tomasulo_lab1/Reorder_Buffer/Reorder_Buffer.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3620187407;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3903714526_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 1792U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t9 = (69 - 69);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 1672U);
    t8 = *((char **)t5);
    t5 = (t0 + 12832U);
    t18 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t5);
    t19 = (t18 - 0);
    t20 = (t19 * 1);
    t21 = (70U * t20);
    t22 = (0U + t21);
    t23 = (69 - 69);
    t24 = (1U * t23);
    t25 = (t22 + t24);
    t12 = (t0 + 7392);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 70U);
    xsi_driver_first_trans_delta(t12, t25, 70U, 0LL);
    t1 = (t0 + 7184);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 4072U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t9 = (31 - 31);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t8 + t11);
    t12 = (t0 + 7328);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 32U);
    xsi_driver_first_trans_delta(t12, 0U, 32U, 0LL);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t9 = (4 - 4);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 7328);
    t8 = (t5 + 56U);
    t12 = *((char **)t8);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 5U);
    xsi_driver_first_trans_delta(t5, 32U, 5U, 0LL);
    xsi_set_current_line(93, ng0);
    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t17, 0, 32);
    t2 = (t0 + 7328);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_delta(t2, 37U, 32U, 0LL);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 7328);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 69U, 1, 0LL);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t9 = (69 - 69);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 3752U);
    t8 = *((char **)t5);
    t5 = (t0 + 12928U);
    t18 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t5);
    t19 = (t18 - 0);
    t20 = (t19 * 1);
    t21 = (70U * t20);
    t22 = (0U + t21);
    t23 = (69 - 69);
    t24 = (1U * t23);
    t25 = (t22 + t24);
    t12 = (t0 + 7392);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 70U);
    xsi_driver_first_trans_delta(t12, t25, 70U, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4712U);
    t8 = *((char **)t2);
    t9 = (69 - 69);
    t10 = (t9 * 1U);
    t2 = (t0 + 1672U);
    t12 = *((char **)t2);
    t2 = (t0 + 12832U);
    t18 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t2);
    t19 = (t18 - 0);
    t11 = (t19 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t18);
    t20 = (70U * t11);
    t21 = (0 + t20);
    t22 = (t21 + t10);
    t13 = (t8 + t22);
    t14 = (t0 + 7456);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t26 = (t16 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t13, 70U);
    xsi_driver_first_trans_delta(t14, 0U, 70U, 0LL);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 7456);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_delta(t1, 37U, 32U, 0LL);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 7456);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t8 = (t5 + 56U);
    t12 = *((char **)t8);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 69U, 1, 0LL);
    goto LAB9;

LAB11:    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t3 = t7;
    goto LAB13;

}

static void work_a_3903714526_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(111, ng0);

LAB3:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t3 = (69 - 37);
    t4 = (t3 * 1U);
    t1 = (t0 + 3592U);
    t5 = *((char **)t1);
    t1 = (t0 + 12912U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t6);
    t9 = (70U * t8);
    t10 = (0 + t9);
    t11 = (t10 + t4);
    t12 = (t2 + t11);
    t13 = (t0 + 7520);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 5U);
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 7200);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3903714526_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    char *t5;
    int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(112, ng0);

LAB3:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t3 = (69 - 32);
    t4 = (t3 * 1U);
    t1 = (t0 + 3592U);
    t5 = *((char **)t1);
    t1 = (t0 + 12912U);
    t6 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t7 = (t6 - 0);
    t8 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t6);
    t9 = (70U * t8);
    t10 = (0 + t9);
    t11 = (t10 + t4);
    t12 = (t2 + t11);
    t13 = (t0 + 7584);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 32U);
    xsi_driver_first_trans_fast_port(t13);

LAB2:    t18 = (t0 + 7216);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3903714526_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t3 = (0 - 69);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t1 = (t0 + 3592U);
    t6 = *((char **)t1);
    t1 = (t0 + 12912U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t7);
    t10 = (70U * t9);
    t11 = (0 + t10);
    t12 = (t11 + t5);
    t13 = (t2 + t12);
    t14 = *((unsigned char *)t13);
    t15 = (t0 + 7648);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t14;
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 7232);
    *((int *)t20) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3903714526_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;

LAB0:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1792U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 7248);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(119, ng0);
    t4 = (t0 + 1352U);
    t10 = *((char **)t4);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB14;

LAB15:    t9 = (unsigned char)0;

LAB16:    if (t9 == 1)
        goto LAB11;

LAB12:    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)2);
    t8 = t20;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t1 = (unsigned char)0;

LAB21:    if (t1 != 0)
        goto LAB17;

LAB18:
LAB9:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4712U);
    t4 = *((char **)t2);
    t25 = (0 - 69);
    t26 = (t25 * -1);
    t27 = (1U * t26);
    t2 = (t0 + 3592U);
    t5 = *((char **)t2);
    t2 = (t0 + 12912U);
    t28 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t2);
    t29 = (t28 - 0);
    t30 = (t29 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t28);
    t31 = (70U * t30);
    t32 = (0 + t31);
    t33 = (t32 + t27);
    t10 = (t4 + t33);
    t1 = *((unsigned char *)t10);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB3;

LAB5:    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(121, ng0);
    t17 = (t0 + 7712);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 7776);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 15503);
    t5 = (t0 + 7840);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t2, 5U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB9;

LAB11:    t8 = (unsigned char)1;
    goto LAB13;

LAB14:    t4 = (t0 + 3752U);
    t13 = *((char **)t4);
    t4 = (t0 + 12928U);
    t14 = (t0 + 3432U);
    t15 = *((char **)t14);
    t14 = (t0 + 12912U);
    t16 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t13, t4, t15, t14);
    t9 = t16;
    goto LAB16;

LAB17:    xsi_set_current_line(125, ng0);
    t14 = (t0 + 7776);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t21 = *((char **)t18);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 7712);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t10 = (t5 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 3752U);
    t4 = *((char **)t2);
    t2 = (t0 + 7840);
    t5 = (t2 + 56U);
    t10 = *((char **)t5);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 5U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 3912U);
    t4 = *((char **)t2);
    t2 = (t0 + 7904);
    t5 = (t2 + 56U);
    t10 = *((char **)t5);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 5U);
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB19:    t2 = (t0 + 3752U);
    t5 = *((char **)t2);
    t2 = (t0 + 12928U);
    t10 = (t0 + 3432U);
    t13 = *((char **)t10);
    t10 = (t0 + 12912U);
    t7 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t5, t2, t13, t10);
    t1 = t7;
    goto LAB21;

LAB22:    xsi_set_current_line(134, ng0);
    t13 = (t0 + 3592U);
    t14 = *((char **)t13);
    t13 = (t0 + 7968);
    t15 = (t13 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t21 = *((char **)t18);
    memcpy(t21, t14, 5U);
    xsi_driver_first_trans_fast(t13);
    goto LAB23;

}


extern void work_a_3903714526_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3903714526_3212880686_p_0,(void *)work_a_3903714526_3212880686_p_1,(void *)work_a_3903714526_3212880686_p_2,(void *)work_a_3903714526_3212880686_p_3,(void *)work_a_3903714526_3212880686_p_4};
	xsi_register_didat("work_a_3903714526_3212880686", "isim/ieee_isim_beh.exe.sim/work/a_3903714526_3212880686.didat");
	xsi_register_executes(pe);
}
