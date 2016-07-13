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

/* This file is designed for use with ISim build 0x1048c146 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/mtech/poonam_vlsi/vlsi_proj/sinn/modulation_vhdl/test_qpskk.vhd";
extern char *IEEE_P_2592010699;
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_2889341154_91900896(char *, char *, char *, char *, char *);


static void work_a_2617711871_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 2376);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 2376);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 2316);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2617711871_2372691052_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(80, ng0);

LAB3:    t1 = (5 * 1000LL);
    t2 = (t0 + 2412);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t7 = (t0 + 2412);
    xsi_driver_intertial_reject(t7, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2617711871_2372691052_p_2(char *t0)
{
    char t10[8];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 2120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);

LAB4:    t2 = (t0 + 1296U);
    t3 = std_textio_endfile(t2);
    t4 = (!(t3));
    if (t4 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(104, ng0);

LAB14:    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB5:    xsi_set_current_line(96, ng0);
    t5 = (t0 + 2020);
    t6 = (t0 + 1296U);
    t7 = (t0 + 1464U);
    std_textio_readline(STD_TEXTIO, t5, t6, t7);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2020);
    t5 = (t0 + 1464U);
    t6 = (t0 + 1108U);
    t7 = *((char **)t6);
    t6 = (t0 + 4664U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t5, t7, t6);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1108U);
    t5 = *((char **)t2);
    t2 = (t0 + 2448);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2020);
    t5 = (t0 + 1464U);
    t6 = (t0 + 868U);
    t7 = *((char **)t6);
    memcpy(t10, t7, 4U);
    t6 = (t0 + 4648U);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t5, t10, t6, (unsigned char)0, 0);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2020);
    t5 = (t0 + 1360U);
    t6 = (t0 + 1464U);
    std_textio_writeline(STD_TEXTIO, t2, t5, t6);
    xsi_set_current_line(102, ng0);

LAB10:    t2 = (t0 + 2332);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:;
LAB8:    t5 = (t0 + 2332);
    *((int *)t5) = 0;
    goto LAB4;

LAB9:    t5 = (t0 + 684U);
    t6 = *((char **)t5);
    t3 = *((unsigned char *)t6);
    t4 = (t3 == (unsigned char)2);
    if (t4 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_2617711871_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2617711871_2372691052_p_0,(void *)work_a_2617711871_2372691052_p_1,(void *)work_a_2617711871_2372691052_p_2};
	xsi_register_didat("work_a_2617711871_2372691052", "isim/test_qpskk_isim_beh.exe.sim/work/a_2617711871_2372691052.didat");
	xsi_register_executes(pe);
}
