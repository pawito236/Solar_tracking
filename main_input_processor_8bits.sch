<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2(7:0)" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_4(7:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="OSC_P123" />
        <signal name="wr" />
        <signal name="address_bus(1:0)" />
        <signal name="databus(7:0)" />
        <signal name="isdx" />
        <signal name="isdy" />
        <signal name="xDir" />
        <signal name="yDir" />
        <signal name="GX(7:0)" />
        <signal name="GY(7:0)" />
        <signal name="SW0_P66" />
        <signal name="SEG(6:0)" />
        <signal name="COMMON(3:0)" />
        <port polarity="Input" name="OSC_P123" />
        <port polarity="Input" name="wr" />
        <port polarity="Input" name="address_bus(1:0)" />
        <port polarity="Input" name="databus(7:0)" />
        <port polarity="Output" name="isdx" />
        <port polarity="Output" name="isdy" />
        <port polarity="Output" name="xDir" />
        <port polarity="Output" name="yDir" />
        <port polarity="Output" name="GX(7:0)" />
        <port polarity="Output" name="GY(7:0)" />
        <port polarity="Input" name="SW0_P66" />
        <port polarity="Output" name="SEG(6:0)" />
        <port polarity="Output" name="COMMON(3:0)" />
        <blockdef name="ANGLE_CALCULATOR_8bits">
            <timestamp>2024-11-7T5:46:33</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="212" height="24" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-124" height="24" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-384" height="640" />
        </blockdef>
        <blockdef name="DISPLAY_LIGHT_8bits">
            <timestamp>2024-11-7T5:57:41</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
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
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
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
        <block symbolname="ANGLE_CALCULATOR_8bits" name="XLXI_2">
            <blockpin signalname="OSC_P123" name="clk" />
            <blockpin signalname="XLXN_5" name="reset" />
            <blockpin signalname="wr" name="wr" />
            <blockpin signalname="address_bus(1:0)" name="address_bus(1:0)" />
            <blockpin signalname="databus(7:0)" name="databus(7:0)" />
            <blockpin signalname="isdx" name="isdx" />
            <blockpin signalname="isdy" name="isdy" />
            <blockpin signalname="xDir" name="xDir" />
            <blockpin signalname="yDir" name="yDir" />
            <blockpin signalname="GX(7:0)" name="gx(7:0)" />
            <blockpin signalname="GY(7:0)" name="gy(7:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="rts(7:0)" />
            <blockpin signalname="XLXN_1(7:0)" name="rds(7:0)" />
            <blockpin signalname="XLXN_4(7:0)" name="lts(7:0)" />
            <blockpin signalname="XLXN_2(7:0)" name="lds(7:0)" />
        </block>
        <block symbolname="DISPLAY_LIGHT_8bits" name="XLXI_3">
            <blockpin signalname="OSC_P123" name="clk" />
            <blockpin signalname="XLXN_6" name="reset" />
            <blockpin signalname="SW0_P66" name="st" />
            <blockpin signalname="XLXN_4(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_2(7:0)" name="C(7:0)" />
            <blockpin signalname="XLXN_1(7:0)" name="D(7:0)" />
            <blockpin signalname="SEG(6:0)" name="seg(6:0)" />
            <blockpin signalname="COMMON(3:0)" name="common(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_5" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_6" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1232" y="1248" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2320" y="1296" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="1968" y1="1344" y2="1344" x1="1616" />
            <wire x2="1968" y1="1264" y2="1344" x1="1968" />
            <wire x2="2320" y1="1264" y2="1264" x1="1968" />
        </branch>
        <branch name="XLXN_2(7:0)">
            <wire x2="1952" y1="1472" y2="1472" x1="1616" />
            <wire x2="1952" y1="1200" y2="1472" x1="1952" />
            <wire x2="2320" y1="1200" y2="1200" x1="1952" />
        </branch>
        <branch name="XLXN_3(7:0)">
            <wire x2="1936" y1="1280" y2="1280" x1="1616" />
            <wire x2="1936" y1="1136" y2="1280" x1="1936" />
            <wire x2="2320" y1="1136" y2="1136" x1="1936" />
        </branch>
        <branch name="XLXN_4(7:0)">
            <wire x2="1920" y1="1408" y2="1408" x1="1616" />
            <wire x2="1920" y1="1072" y2="1408" x1="1920" />
            <wire x2="2320" y1="1072" y2="1072" x1="1920" />
        </branch>
        <instance x="2192" y="1536" name="XLXI_5" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1024" y1="976" y2="1536" x1="1024" />
            <wire x2="1232" y1="976" y2="976" x1="1024" />
        </branch>
        <instance x="960" y="1664" name="XLXI_4" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="2320" y1="944" y2="944" x1="2256" />
            <wire x2="2256" y1="944" y2="1408" x1="2256" />
        </branch>
        <branch name="OSC_P123">
            <wire x2="992" y1="896" y2="896" x1="848" />
            <wire x2="1232" y1="896" y2="896" x1="992" />
            <wire x2="992" y1="800" y2="896" x1="992" />
            <wire x2="1680" y1="800" y2="800" x1="992" />
            <wire x2="1680" y1="800" y2="880" x1="1680" />
            <wire x2="2320" y1="880" y2="880" x1="1680" />
        </branch>
        <branch name="wr">
            <wire x2="1232" y1="1056" y2="1056" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1056" name="wr" orien="R180" />
        <branch name="address_bus(1:0)">
            <wire x2="1232" y1="1136" y2="1136" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1136" name="address_bus(1:0)" orien="R180" />
        <branch name="databus(7:0)">
            <wire x2="1232" y1="1216" y2="1216" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1216" name="databus(7:0)" orien="R180" />
        <branch name="isdx">
            <wire x2="1648" y1="896" y2="896" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="896" name="isdx" orien="R0" />
        <branch name="isdy">
            <wire x2="1648" y1="960" y2="960" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="960" name="isdy" orien="R0" />
        <branch name="xDir">
            <wire x2="1648" y1="1024" y2="1024" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1024" name="xDir" orien="R0" />
        <branch name="yDir">
            <wire x2="1648" y1="1088" y2="1088" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1088" name="yDir" orien="R0" />
        <branch name="GX(7:0)">
            <wire x2="1648" y1="1152" y2="1152" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1152" name="GX(7:0)" orien="R0" />
        <branch name="GY(7:0)">
            <wire x2="1648" y1="1216" y2="1216" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1216" name="GY(7:0)" orien="R0" />
        <branch name="SW0_P66">
            <wire x2="2320" y1="1008" y2="1008" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2288" y="1008" name="SW0_P66" orien="R180" />
        <iomarker fontsize="28" x="848" y="896" name="OSC_P123" orien="R180" />
        <branch name="SEG(6:0)">
            <wire x2="2736" y1="880" y2="880" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="880" name="SEG(6:0)" orien="R0" />
        <branch name="COMMON(3:0)">
            <wire x2="2736" y1="1264" y2="1264" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1264" name="COMMON(3:0)" orien="R0" />
    </sheet>
</drawing>