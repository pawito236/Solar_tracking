<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="isdx" />
        <signal name="isdy" />
        <signal name="xDir" />
        <signal name="yDir" />
        <signal name="GX(2:0)" />
        <signal name="GY(2:0)" />
        <signal name="OSC_P123" />
        <signal name="SEG(6:0)" />
        <signal name="COMMON(3:0)" />
        <signal name="XLXN_19" />
        <signal name="RT(2:0)" />
        <signal name="RD(2:0)" />
        <signal name="LD(2:0)" />
        <signal name="LT(2:0)" />
        <signal name="XLXN_28(2:0)" />
        <signal name="XLXN_29(2:0)" />
        <signal name="XLXN_30(2:0)" />
        <signal name="XLXN_31(2:0)" />
        <port polarity="Output" name="isdx" />
        <port polarity="Output" name="isdy" />
        <port polarity="Output" name="xDir" />
        <port polarity="Output" name="yDir" />
        <port polarity="Output" name="GX(2:0)" />
        <port polarity="Output" name="GY(2:0)" />
        <port polarity="Input" name="OSC_P123" />
        <port polarity="Output" name="SEG(6:0)" />
        <port polarity="Output" name="COMMON(3:0)" />
        <port polarity="Input" name="RT(2:0)" />
        <port polarity="Input" name="RD(2:0)" />
        <port polarity="Input" name="LD(2:0)" />
        <port polarity="Input" name="LT(2:0)" />
        <blockdef name="ANGLE_CALCULATOR_MAIN">
            <timestamp>2024-11-5T17:15:27</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="ANGLE_CALCULATOR_MAIN" name="XLXI_1">
            <blockpin signalname="RT(2:0)" name="rts(2:0)" />
            <blockpin signalname="RD(2:0)" name="rds(2:0)" />
            <blockpin signalname="LD(2:0)" name="lds(2:0)" />
            <blockpin signalname="LT(2:0)" name="lts(2:0)" />
            <blockpin signalname="isdx" name="isdx" />
            <blockpin signalname="isdy" name="isdy" />
            <blockpin signalname="xDir" name="xDir" />
            <blockpin signalname="yDir" name="yDir" />
            <blockpin signalname="GX(2:0)" name="gx(2:0)" />
            <blockpin signalname="GY(2:0)" name="gy(2:0)" />
        </block>
        <block symbolname="DISPLAY_LIGHT" name="XLXI_2">
            <blockpin signalname="OSC_P123" name="clk" />
            <blockpin signalname="XLXN_19" name="reset" />
            <blockpin signalname="LT(2:0)" name="A(2:0)" />
            <blockpin signalname="LD(2:0)" name="B(2:0)" />
            <blockpin signalname="RD(2:0)" name="C(2:0)" />
            <blockpin signalname="RT(2:0)" name="D(2:0)" />
            <blockpin signalname="SEG(6:0)" name="seg(6:0)" />
            <blockpin signalname="COMMON(3:0)" name="common(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1424" y="1280" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1408" y="688" name="XLXI_2" orien="R0">
        </instance>
        <branch name="isdx">
            <wire x2="1840" y1="928" y2="928" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="928" name="isdx" orien="R0" />
        <branch name="isdy">
            <wire x2="1840" y1="992" y2="992" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="992" name="isdy" orien="R0" />
        <branch name="xDir">
            <wire x2="1840" y1="1056" y2="1056" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1056" name="xDir" orien="R0" />
        <branch name="yDir">
            <wire x2="1840" y1="1120" y2="1120" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1120" name="yDir" orien="R0" />
        <branch name="GX(2:0)">
            <wire x2="1840" y1="1184" y2="1184" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1184" name="GX(2:0)" orien="R0" />
        <branch name="GY(2:0)">
            <wire x2="1840" y1="1248" y2="1248" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1248" name="GY(2:0)" orien="R0" />
        <branch name="OSC_P123">
            <wire x2="1408" y1="336" y2="336" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="336" name="OSC_P123" orien="R180" />
        <branch name="SEG(6:0)">
            <wire x2="1824" y1="336" y2="336" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="336" name="SEG(6:0)" orien="R0" />
        <branch name="COMMON(3:0)">
            <wire x2="1824" y1="656" y2="656" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="656" name="COMMON(3:0)" orien="R0" />
        <instance x="928" y="544" name="XLXI_3" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1408" y1="400" y2="400" x1="992" />
            <wire x2="992" y1="400" y2="416" x1="992" />
        </branch>
        <branch name="RT(2:0)">
            <wire x2="976" y1="928" y2="928" x1="944" />
            <wire x2="1280" y1="928" y2="928" x1="976" />
            <wire x2="1296" y1="928" y2="928" x1="1280" />
            <wire x2="1424" y1="928" y2="928" x1="1296" />
            <wire x2="1408" y1="656" y2="656" x1="1296" />
            <wire x2="1296" y1="656" y2="928" x1="1296" />
        </branch>
        <branch name="RD(2:0)">
            <wire x2="976" y1="1024" y2="1024" x1="944" />
            <wire x2="1248" y1="1024" y2="1024" x1="976" />
            <wire x2="1280" y1="1024" y2="1024" x1="1248" />
            <wire x2="1424" y1="1024" y2="1024" x1="1280" />
            <wire x2="1408" y1="592" y2="592" x1="1248" />
            <wire x2="1248" y1="592" y2="1024" x1="1248" />
        </branch>
        <branch name="LD(2:0)">
            <wire x2="976" y1="1120" y2="1120" x1="944" />
            <wire x2="1200" y1="1120" y2="1120" x1="976" />
            <wire x2="1280" y1="1120" y2="1120" x1="1200" />
            <wire x2="1424" y1="1120" y2="1120" x1="1280" />
            <wire x2="1408" y1="528" y2="528" x1="1200" />
            <wire x2="1200" y1="528" y2="1120" x1="1200" />
        </branch>
        <branch name="LT(2:0)">
            <wire x2="976" y1="1216" y2="1216" x1="944" />
            <wire x2="1120" y1="1216" y2="1216" x1="976" />
            <wire x2="1280" y1="1216" y2="1216" x1="1120" />
            <wire x2="1424" y1="1216" y2="1216" x1="1280" />
            <wire x2="1408" y1="464" y2="464" x1="1120" />
            <wire x2="1120" y1="464" y2="1216" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="944" y="928" name="RT(2:0)" orien="R180" />
        <iomarker fontsize="28" x="944" y="1024" name="RD(2:0)" orien="R180" />
        <iomarker fontsize="28" x="944" y="1120" name="LD(2:0)" orien="R180" />
        <iomarker fontsize="28" x="944" y="1216" name="LT(2:0)" orien="R180" />
    </sheet>
</drawing>