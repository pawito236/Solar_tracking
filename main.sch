<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RT(2:0)" />
        <signal name="RD(2:0)" />
        <signal name="LD(2:0)" />
        <signal name="LT(2:0)" />
        <signal name="L7_P67" />
        <signal name="L6_P74" />
        <signal name="GX(2:0)" />
        <signal name="GY(2:0)" />
        <signal name="OSC_P123" />
        <signal name="endXMotor" />
        <signal name="endYMotor" />
        <signal name="endYU" />
        <signal name="endXL" />
        <signal name="endXR" />
        <signal name="endYD" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="yDir" />
        <signal name="xDir" />
        <signal name="MN7_P84" />
        <signal name="MN6_P85" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="MN3_P92" />
        <signal name="MN4_P88" />
        <signal name="L3_P79" />
        <signal name="L4_P78" />
        <signal name="enSH" />
        <signal name="SW3_P59" />
        <signal name="SEG(6:0)" />
        <signal name="COMMON(3:0)" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58(2:0)" />
        <signal name="XLXN_59(2:0)" />
        <signal name="XLXN_60(2:0)" />
        <signal name="XLXN_61(2:0)" />
        <port polarity="Input" name="RT(2:0)" />
        <port polarity="Input" name="RD(2:0)" />
        <port polarity="Input" name="LD(2:0)" />
        <port polarity="Input" name="LT(2:0)" />
        <port polarity="Output" name="L7_P67" />
        <port polarity="Output" name="L6_P74" />
        <port polarity="Output" name="GX(2:0)" />
        <port polarity="Output" name="GY(2:0)" />
        <port polarity="Input" name="OSC_P123" />
        <port polarity="Output" name="endXMotor" />
        <port polarity="Output" name="endYMotor" />
        <port polarity="Input" name="endYU" />
        <port polarity="Input" name="endXL" />
        <port polarity="Input" name="endXR" />
        <port polarity="Input" name="endYD" />
        <port polarity="Output" name="yDir" />
        <port polarity="Output" name="xDir" />
        <port polarity="Output" name="MN7_P84" />
        <port polarity="Output" name="MN6_P85" />
        <port polarity="Output" name="MN3_P92" />
        <port polarity="Output" name="MN4_P88" />
        <port polarity="Output" name="L3_P79" />
        <port polarity="Output" name="L4_P78" />
        <port polarity="Output" name="enSH" />
        <port polarity="Input" name="SW3_P59" />
        <port polarity="Output" name="SEG(6:0)" />
        <port polarity="Output" name="COMMON(3:0)" />
        <blockdef name="ANGLE_CALCULATOR_V2">
            <timestamp>2024-11-3T14:46:23</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MOTOR_DRIVER">
            <timestamp>2024-11-4T9:4:28</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="DISPLAY_LIGHT">
            <timestamp>2024-11-5T12:16:0</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="ANGLE_CALCULATOR_V2" name="XLXI_4">
            <blockpin signalname="RT(2:0)" name="rts(2:0)" />
            <blockpin signalname="RD(2:0)" name="rds(2:0)" />
            <blockpin signalname="LD(2:0)" name="lds(2:0)" />
            <blockpin signalname="LT(2:0)" name="lts(2:0)" />
            <blockpin signalname="L7_P67" name="xDir" />
            <blockpin signalname="L6_P74" name="yDir" />
            <blockpin signalname="GX(2:0)" name="gx(2:0)" />
            <blockpin signalname="GY(2:0)" name="gy(2:0)" />
        </block>
        <block symbolname="MOTOR_DRIVER" name="XLXI_5">
            <blockpin signalname="L7_P67" name="xDir" />
            <blockpin signalname="L6_P74" name="yDir" />
            <blockpin signalname="endYD" name="endYD" />
            <blockpin signalname="endYU" name="endYU" />
            <blockpin signalname="endXL" name="endXL" />
            <blockpin signalname="endXR" name="endXR" />
            <blockpin signalname="OSC_P123" name="clk" />
            <blockpin signalname="GX(2:0)" name="gx(2:0)" />
            <blockpin signalname="GY(2:0)" name="gy(2:0)" />
            <blockpin signalname="endXMotor" name="enXMotor" />
            <blockpin signalname="endYMotor" name="enYMotor" />
            <blockpin name="st(1:0)" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="L6_P74" name="I" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="XLXN_35" name="I" />
            <blockpin signalname="yDir" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="L7_P67" name="I" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="XLXN_36" name="I" />
            <blockpin signalname="xDir" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="endXMotor" name="I" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_37" name="I" />
            <blockpin signalname="MN7_P84" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_22">
            <blockpin signalname="endYMotor" name="I" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="XLXN_38" name="I" />
            <blockpin signalname="MN6_P85" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_28">
            <blockpin signalname="endYD" name="I" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_29">
            <blockpin signalname="endYU" name="I" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_30">
            <blockpin signalname="XLXN_50" name="I" />
            <blockpin signalname="MN3_P92" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_31">
            <blockpin signalname="XLXN_51" name="I" />
            <blockpin signalname="MN4_P88" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_32">
            <blockpin signalname="endXL" name="I" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_33">
            <blockpin signalname="XLXN_52" name="I" />
            <blockpin signalname="L3_P79" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_34">
            <blockpin signalname="endXR" name="I" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_35">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="L4_P78" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_36">
            <blockpin signalname="SW3_P59" name="I" />
            <blockpin signalname="enSH" name="O" />
        </block>
        <block symbolname="DISPLAY_LIGHT" name="XLXI_37">
            <blockpin signalname="OSC_P123" name="clk" />
            <blockpin signalname="XLXN_57" name="reset" />
            <blockpin signalname="LD(2:0)" name="A(2:0)" />
            <blockpin signalname="LT(2:0)" name="B(2:0)" />
            <blockpin signalname="RD(2:0)" name="C(2:0)" />
            <blockpin signalname="RT(2:0)" name="D(2:0)" />
            <blockpin signalname="SEG(6:0)" name="seg(6:0)" />
            <blockpin signalname="COMMON(3:0)" name="common(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_38">
            <blockpin signalname="XLXN_57" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1488" y="1552" name="XLXI_4" orien="R0">
        </instance>
        <branch name="RT(2:0)">
            <wire x2="1264" y1="1328" y2="1328" x1="800" />
            <wire x2="1472" y1="1328" y2="1328" x1="1264" />
            <wire x2="1488" y1="1328" y2="1328" x1="1472" />
            <wire x2="1520" y1="992" y2="992" x1="1264" />
            <wire x2="1264" y1="992" y2="1328" x1="1264" />
        </branch>
        <branch name="RD(2:0)">
            <wire x2="1216" y1="1392" y2="1392" x1="800" />
            <wire x2="1472" y1="1392" y2="1392" x1="1216" />
            <wire x2="1488" y1="1392" y2="1392" x1="1472" />
            <wire x2="1520" y1="928" y2="928" x1="1216" />
            <wire x2="1216" y1="928" y2="1392" x1="1216" />
        </branch>
        <branch name="LD(2:0)">
            <wire x2="1072" y1="1456" y2="1456" x1="800" />
            <wire x2="1312" y1="1456" y2="1456" x1="1072" />
            <wire x2="1472" y1="1456" y2="1456" x1="1312" />
            <wire x2="1488" y1="1456" y2="1456" x1="1472" />
            <wire x2="1520" y1="800" y2="800" x1="1312" />
            <wire x2="1312" y1="800" y2="1440" x1="1312" />
            <wire x2="1312" y1="1440" y2="1456" x1="1312" />
        </branch>
        <branch name="LT(2:0)">
            <wire x2="896" y1="1520" y2="1520" x1="784" />
            <wire x2="1008" y1="1520" y2="1520" x1="896" />
            <wire x2="1024" y1="1520" y2="1520" x1="1008" />
            <wire x2="1120" y1="1520" y2="1520" x1="1024" />
            <wire x2="1216" y1="1520" y2="1520" x1="1120" />
            <wire x2="1472" y1="1520" y2="1520" x1="1216" />
            <wire x2="1488" y1="1520" y2="1520" x1="1472" />
            <wire x2="1520" y1="864" y2="864" x1="1120" />
            <wire x2="1120" y1="864" y2="1520" x1="1120" />
        </branch>
        <branch name="L7_P67">
            <wire x2="2016" y1="1328" y2="1328" x1="1872" />
            <wire x2="2016" y1="1328" y2="1856" x1="2016" />
            <wire x2="2144" y1="1856" y2="1856" x1="2016" />
            <wire x2="2160" y1="1328" y2="1328" x1="2016" />
            <wire x2="2464" y1="1280" y2="1280" x1="2016" />
            <wire x2="2016" y1="1280" y2="1328" x1="2016" />
        </branch>
        <branch name="L6_P74">
            <wire x2="1968" y1="1392" y2="1392" x1="1872" />
            <wire x2="1968" y1="1392" y2="1920" x1="1968" />
            <wire x2="2144" y1="1920" y2="1920" x1="1968" />
            <wire x2="2160" y1="1392" y2="1392" x1="1968" />
            <wire x2="2208" y1="1152" y2="1152" x1="1968" />
            <wire x2="1968" y1="1152" y2="1392" x1="1968" />
        </branch>
        <branch name="GX(2:0)">
            <wire x2="2064" y1="1456" y2="1456" x1="1872" />
            <wire x2="2064" y1="1456" y2="2304" x1="2064" />
            <wire x2="2144" y1="2304" y2="2304" x1="2064" />
            <wire x2="2160" y1="1456" y2="1456" x1="2064" />
        </branch>
        <branch name="GY(2:0)">
            <wire x2="1936" y1="1520" y2="1520" x1="1872" />
            <wire x2="1936" y1="1520" y2="2368" x1="1936" />
            <wire x2="2144" y1="2368" y2="2368" x1="1936" />
            <wire x2="2160" y1="1520" y2="1520" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1328" name="L7_P67" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1392" name="L6_P74" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1456" name="GX(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1520" name="GY(2:0)" orien="R0" />
        <instance x="2144" y="2400" name="XLXI_5" orien="R0">
        </instance>
        <branch name="OSC_P123">
            <wire x2="1520" y1="672" y2="672" x1="1392" />
            <wire x2="1392" y1="672" y2="1632" x1="1392" />
            <wire x2="1728" y1="1632" y2="1632" x1="1392" />
            <wire x2="1728" y1="1632" y2="2240" x1="1728" />
            <wire x2="2128" y1="2240" y2="2240" x1="1728" />
            <wire x2="2144" y1="2240" y2="2240" x1="2128" />
            <wire x2="1728" y1="2240" y2="2240" x1="1504" />
        </branch>
        <branch name="endXMotor">
            <wire x2="2544" y1="1856" y2="1856" x1="2528" />
            <wire x2="2592" y1="1856" y2="1856" x1="2544" />
            <wire x2="2736" y1="1856" y2="1856" x1="2592" />
            <wire x2="2592" y1="1856" y2="1952" x1="2592" />
            <wire x2="2704" y1="1952" y2="1952" x1="2592" />
        </branch>
        <branch name="endYMotor">
            <wire x2="2544" y1="2112" y2="2112" x1="2528" />
            <wire x2="2592" y1="2112" y2="2112" x1="2544" />
            <wire x2="2752" y1="2112" y2="2112" x1="2592" />
            <wire x2="2592" y1="2112" y2="2240" x1="2592" />
            <wire x2="2688" y1="2240" y2="2240" x1="2592" />
        </branch>
        <branch name="endXL">
            <wire x2="944" y1="2320" y2="2544" x1="944" />
            <wire x2="1024" y1="2544" y2="2544" x1="944" />
            <wire x2="1232" y1="2320" y2="2320" x1="944" />
            <wire x2="1232" y1="2112" y2="2112" x1="992" />
            <wire x2="1536" y1="2112" y2="2112" x1="1232" />
            <wire x2="1760" y1="2112" y2="2112" x1="1536" />
            <wire x2="2144" y1="2112" y2="2112" x1="1760" />
            <wire x2="1232" y1="2112" y2="2320" x1="1232" />
        </branch>
        <branch name="endXR">
            <wire x2="928" y1="2304" y2="2624" x1="928" />
            <wire x2="1024" y1="2624" y2="2624" x1="928" />
            <wire x2="1248" y1="2304" y2="2304" x1="928" />
            <wire x2="1248" y1="2176" y2="2176" x1="992" />
            <wire x2="1536" y1="2176" y2="2176" x1="1248" />
            <wire x2="1760" y1="2176" y2="2176" x1="1536" />
            <wire x2="2144" y1="2176" y2="2176" x1="1760" />
            <wire x2="1248" y1="2176" y2="2304" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="992" y="1984" name="endYD" orien="R180" />
        <iomarker fontsize="28" x="992" y="2176" name="endXR" orien="R180" />
        <iomarker fontsize="28" x="992" y="2112" name="endXL" orien="R180" />
        <iomarker fontsize="28" x="992" y="2048" name="endYU" orien="R180" />
        <iomarker fontsize="28" x="784" y="1520" name="LT(2:0)" orien="R180" />
        <instance x="2208" y="1184" name="XLXI_16" orien="R0" />
        <branch name="XLXN_35">
            <wire x2="2464" y1="1152" y2="1152" x1="2432" />
        </branch>
        <instance x="2464" y="1184" name="XLXI_17" orien="R0" />
        <instance x="2464" y="1312" name="XLXI_18" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="2720" y1="1280" y2="1280" x1="2688" />
        </branch>
        <instance x="2720" y="1312" name="XLXI_19" orien="R0" />
        <instance x="2704" y="1984" name="XLXI_20" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="2960" y1="1952" y2="1952" x1="2928" />
        </branch>
        <instance x="2960" y="1984" name="XLXI_21" orien="R0" />
        <instance x="2688" y="2272" name="XLXI_22" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="2944" y1="2240" y2="2240" x1="2912" />
        </branch>
        <instance x="2944" y="2272" name="XLXI_23" orien="R0" />
        <branch name="yDir">
            <wire x2="2720" y1="1152" y2="1152" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1152" name="yDir" orien="R0" />
        <branch name="xDir">
            <wire x2="2976" y1="1280" y2="1280" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="2976" y="1280" name="xDir" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1856" name="endXMotor" orien="R0" />
        <iomarker fontsize="28" x="2752" y="2112" name="endYMotor" orien="R0" />
        <branch name="MN7_P84">
            <wire x2="3216" y1="1952" y2="1952" x1="3184" />
        </branch>
        <iomarker fontsize="28" x="3216" y="1952" name="MN7_P84" orien="R0" />
        <branch name="MN6_P85">
            <wire x2="3200" y1="2240" y2="2240" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3200" y="2240" name="MN6_P85" orien="R0" />
        <branch name="endYD">
            <wire x2="960" y1="2272" y2="2368" x1="960" />
            <wire x2="1024" y1="2368" y2="2368" x1="960" />
            <wire x2="1200" y1="2272" y2="2272" x1="960" />
            <wire x2="1200" y1="1984" y2="1984" x1="992" />
            <wire x2="1536" y1="1984" y2="1984" x1="1200" />
            <wire x2="1760" y1="1984" y2="1984" x1="1536" />
            <wire x2="1776" y1="1984" y2="1984" x1="1760" />
            <wire x2="2144" y1="1984" y2="1984" x1="1776" />
            <wire x2="1200" y1="1984" y2="2272" x1="1200" />
        </branch>
        <instance x="1024" y="2400" name="XLXI_28" orien="R0" />
        <instance x="1024" y="2496" name="XLXI_29" orien="R0" />
        <branch name="XLXN_50">
            <wire x2="1280" y1="2368" y2="2368" x1="1248" />
        </branch>
        <instance x="1280" y="2400" name="XLXI_30" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="1280" y1="2464" y2="2464" x1="1248" />
        </branch>
        <instance x="1280" y="2496" name="XLXI_31" orien="R0" />
        <instance x="1024" y="2576" name="XLXI_32" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="1280" y1="2544" y2="2544" x1="1248" />
        </branch>
        <instance x="1280" y="2576" name="XLXI_33" orien="R0" />
        <instance x="1024" y="2656" name="XLXI_34" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="1280" y1="2624" y2="2624" x1="1248" />
        </branch>
        <instance x="1280" y="2656" name="XLXI_35" orien="R0" />
        <branch name="endYU">
            <wire x2="1104" y1="2048" y2="2048" x1="992" />
            <wire x2="1232" y1="2048" y2="2048" x1="1104" />
            <wire x2="1264" y1="2048" y2="2048" x1="1232" />
            <wire x2="1536" y1="2048" y2="2048" x1="1264" />
            <wire x2="1760" y1="2048" y2="2048" x1="1536" />
            <wire x2="2144" y1="2048" y2="2048" x1="1760" />
            <wire x2="1104" y1="2048" y2="2288" x1="1104" />
            <wire x2="1008" y1="2288" y2="2464" x1="1008" />
            <wire x2="1024" y1="2464" y2="2464" x1="1008" />
            <wire x2="1104" y1="2288" y2="2288" x1="1008" />
        </branch>
        <branch name="MN3_P92">
            <wire x2="1536" y1="2368" y2="2368" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="2368" name="MN3_P92" orien="R0" />
        <branch name="MN4_P88">
            <wire x2="1536" y1="2464" y2="2464" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="2464" name="MN4_P88" orien="R0" />
        <branch name="L3_P79">
            <wire x2="1536" y1="2544" y2="2544" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="2544" name="L3_P79" orien="R0" />
        <branch name="L4_P78">
            <wire x2="1536" y1="2624" y2="2624" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="2624" name="L4_P78" orien="R0" />
        <instance x="1968" y="2896" name="XLXI_36" orien="R0" />
        <branch name="enSH">
            <wire x2="2224" y1="2864" y2="2864" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="2864" name="enSH" orien="R0" />
        <branch name="SW3_P59">
            <wire x2="1968" y1="2864" y2="2864" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1936" y="2864" name="SW3_P59" orien="R180" />
        <iomarker fontsize="28" x="800" y="1328" name="RT(2:0)" orien="R180" />
        <iomarker fontsize="28" x="800" y="1392" name="RD(2:0)" orien="R180" />
        <iomarker fontsize="28" x="800" y="1456" name="LD(2:0)" orien="R180" />
        <instance x="1520" y="1024" name="XLXI_37" orien="R0">
        </instance>
        <branch name="SEG(6:0)">
            <wire x2="1936" y1="672" y2="672" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1936" y="672" name="SEG(6:0)" orien="R0" />
        <branch name="COMMON(3:0)">
            <wire x2="1936" y1="992" y2="992" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1936" y="992" name="COMMON(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1504" y="2240" name="OSC_P123" orien="R180" />
        <branch name="XLXN_57">
            <wire x2="1520" y1="736" y2="736" x1="1264" />
        </branch>
        <instance x="1200" y="864" name="XLXI_38" orien="R0" />
    </sheet>
</drawing>