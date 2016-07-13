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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3972351953;
char *STD_TEXTIO;
char *XILINXCORELIB_P_1837083571;
char *XILINXCORELIB_P_2342578331;
char *IEEE_P_3499444699;
char *IEEE_P_0774719531;
char *XILINXCORELIB_P_1317117406;
char *XILINXCORELIB_P_0718376120;
char *XILINXCORELIB_P_3381355550;
char *XILINXCORELIB_P_1433929353;
char *XILINXCORELIB_P_3155556343;
char *IEEE_P_3620187407;
char *XILINXCORELIB_P_0624651749;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    xilinxcorelib_p_0718376120_init();
    std_textio_init();
    xilinxcorelib_p_1837083571_init();
    xilinxcorelib_p_3381355550_init();
    xilinxcorelib_p_1433929353_init();
    xilinxcorelib_p_3155556343_init();
    xilinxcorelib_p_0624651749_init();
    xilinxcorelib_a_0798625510_3212880686_init();
    xilinxcorelib_a_3523340230_3212880686_init();
    xilinxcorelib_a_1699395378_3212880686_init();
    work_a_3467719810_4214522653_init();
    ieee_p_3972351953_init();
    ieee_p_0774719531_init();
    xilinxcorelib_p_2342578331_init();
    xilinxcorelib_p_1317117406_init();
    xilinxcorelib_a_1976839029_3212880686_init();
    work_a_0339031162_0093287649_init();
    work_a_4135274559_3212880686_init();
    work_a_0507007593_3212880686_init();
    work_a_2372481712_2372691052_init();


    xsi_register_tops("work_a_2372481712_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3972351953 = xsi_get_engine_memory("ieee_p_3972351953");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    XILINXCORELIB_P_1837083571 = xsi_get_engine_memory("xilinxcorelib_p_1837083571");
    XILINXCORELIB_P_2342578331 = xsi_get_engine_memory("xilinxcorelib_p_2342578331");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    XILINXCORELIB_P_1317117406 = xsi_get_engine_memory("xilinxcorelib_p_1317117406");
    XILINXCORELIB_P_0718376120 = xsi_get_engine_memory("xilinxcorelib_p_0718376120");
    XILINXCORELIB_P_3381355550 = xsi_get_engine_memory("xilinxcorelib_p_3381355550");
    XILINXCORELIB_P_1433929353 = xsi_get_engine_memory("xilinxcorelib_p_1433929353");
    XILINXCORELIB_P_3155556343 = xsi_get_engine_memory("xilinxcorelib_p_3155556343");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    XILINXCORELIB_P_0624651749 = xsi_get_engine_memory("xilinxcorelib_p_0624651749");

    return xsi_run_simulation(argc, argv);

}
