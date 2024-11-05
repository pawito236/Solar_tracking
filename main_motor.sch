<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="enXMotor" />
        <signal name="enYMotor" />
        <signal name="isEnXMotor" />
        <signal name="isEnYMotor" />
        <signal name="gx" />
        <signal name="gy" />
        <signal name="xDirIn" />
        <signal name="yDirIn" />
        <signal name="endYD" />
        <signal name="endYU" />
        <signal name="endXL" />
        <signal name="endXR" />
        <signal name="OSC_P123" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="MN3_P92" />
        <signal name="MN4_P88" />
        <signal name="L3_P79" />
        <signal name="L4_P78" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="L6_P74" />
        <signal name="L7_P67" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="yDirOut" />
        <signal name="xDirOut" />
        <signal name="enSH" />
        <signal name="SW3_P59" />
        <port polarity="Output" name="enXMotor" />
        <port polarity="Output" name="enYMotor" />
        <port polarity="Output" name="isEnXMotor" />
        <port polarity="Output" name="isEnYMotor" />
        <port polarity="Input" name="gx" />
        <port polarity="Input" name="gy" />
        <port polarity="Input" name="xDirIn" />
        <port polarity="Input" name="yDirIn" />
        <port polarity="Input" name="endYD" />
        <port polarity="Input" name="endYU" />
        <port polarity="Input" name="endXL" />
        <port polarity="Input" name="endXR" />
        <port polarity="Input" name="OSC_P123" />
        <port polarity="Output" name="MN3_P92" />
        <port polarity="Output" name="MN4_P88" />
        <port polarity="Output" name="L3_P79" />
        <port polarity="Output" name="L4_P78" />
        <port polarity="Output" name="L6_P74" />
        <port polarity="Output" name="L7_P67" />
        <port polarity="Output" name="yDirOut" />
        <port polarity="Output" name="xDirOut" />
        <port polarity="Output" name="enSH" />
        <port polarity="Input" name="SW3_P59" />
        <blockdef name="MOTOR_DRIVER_MAIN">
            <timestamp>2024-11-5T16:14:56</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-576" height="704" />
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
        <block symbolname="MOTOR_DRIVER_MAIN" name="XLXI_2">
            <blockpin signalname="gx" name="gx" />
            <blockpin signalname="gy" name="gy" />
            <blockpin signalname="xDirIn" name="xDir" />
            <blockpin signalname="yDirIn" name="yDir" />
            <blockpin signalname="endYD" name="endYD" />
            <blockpin signalname="endYU" name="endYU" />
            <blockpin signalname="endXL" name="endXL" />
            <blockpin signalname="endXR" name="endXR" />
            <blockpin signalname="OSC_P123" name="clk" />
            <blockpin signalname="enXMotor" name="enXMotor" />
            <blockpin signalname="enYMotor" name="enYMotor" />
            <blockpin signalname="isEnXMotor" name="isEnXMotor" />
            <blockpin signalname="isEnYMotor" name="isEnYMotor" />
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
        <block symbolname="inv" name="XLXI_52">
            <blockpin signalname="yDirIn" name="I" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_53">
            <blockpin signalname="XLXN_74" name="I" />
            <blockpin signalname="L6_P74" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_54">
            <blockpin signalname="xDirIn" name="I" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_55">
            <blockpin signalname="XLXN_75" name="I" />
            <blockpin signalname="L7_P67" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_56">
            <blockpin signalname="yDirIn" name="I" />
            <blockpin signalname="XLXN_80" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_57">
            <blockpin signalname="xDirIn" name="I" />
            <blockpin signalname="XLXN_81" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_58">
            <blockpin signalname="XLXN_80" name="I" />
            <blockpin signalname="yDirOut" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_59">
            <blockpin signalname="XLXN_81" name="I" />
            <blockpin signalname="xDirOut" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_36">
            <blockpin signalname="SW3_P59" name="I" />
            <blockpin signalname="enSH" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1040" y="1120" name="XLXI_2" orien="R0">
        </instance>
        <branch name="enXMotor">
            <wire x2="1456" y1="576" y2="576" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1456" y="576" name="enXMotor" orien="R0" />
        <branch name="enYMotor">
            <wire x2="1456" y1="1088" y2="1088" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1456" y="1088" name="enYMotor" orien="R0" />
        <branch name="isEnXMotor">
            <wire x2="1456" y1="1152" y2="1152" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1456" y="1152" name="isEnXMotor" orien="R0" />
        <branch name="isEnYMotor">
            <wire x2="1456" y1="1216" y2="1216" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1456" y="1216" name="isEnYMotor" orien="R0" />
        <branch name="gx">
            <wire x2="432" y1="576" y2="576" x1="400" />
            <wire x2="1040" y1="576" y2="576" x1="432" />
        </branch>
        <branch name="gy">
            <wire x2="432" y1="640" y2="640" x1="400" />
            <wire x2="1040" y1="640" y2="640" x1="432" />
        </branch>
        <branch name="xDirIn">
            <wire x2="432" y1="704" y2="704" x1="400" />
            <wire x2="624" y1="704" y2="704" x1="432" />
            <wire x2="1040" y1="704" y2="704" x1="624" />
            <wire x2="624" y1="144" y2="192" x1="624" />
            <wire x2="880" y1="192" y2="192" x1="624" />
            <wire x2="624" y1="192" y2="704" x1="624" />
            <wire x2="1632" y1="144" y2="144" x1="624" />
            <wire x2="1632" y1="144" y2="256" x1="1632" />
            <wire x2="1824" y1="256" y2="256" x1="1632" />
        </branch>
        <branch name="yDirIn">
            <wire x2="432" y1="768" y2="768" x1="400" />
            <wire x2="736" y1="768" y2="768" x1="432" />
            <wire x2="1040" y1="768" y2="768" x1="736" />
            <wire x2="880" y1="288" y2="288" x1="736" />
            <wire x2="736" y1="288" y2="368" x1="736" />
            <wire x2="736" y1="368" y2="768" x1="736" />
            <wire x2="1824" y1="368" y2="368" x1="736" />
        </branch>
        <branch name="endYD">
            <wire x2="432" y1="832" y2="832" x1="400" />
            <wire x2="880" y1="832" y2="832" x1="432" />
            <wire x2="1040" y1="832" y2="832" x1="880" />
            <wire x2="880" y1="832" y2="1360" x1="880" />
            <wire x2="992" y1="1360" y2="1360" x1="880" />
        </branch>
        <branch name="endYU">
            <wire x2="432" y1="896" y2="896" x1="400" />
            <wire x2="832" y1="896" y2="896" x1="432" />
            <wire x2="1040" y1="896" y2="896" x1="832" />
            <wire x2="832" y1="896" y2="1456" x1="832" />
            <wire x2="992" y1="1456" y2="1456" x1="832" />
        </branch>
        <branch name="endXL">
            <wire x2="432" y1="960" y2="960" x1="400" />
            <wire x2="768" y1="960" y2="960" x1="432" />
            <wire x2="1040" y1="960" y2="960" x1="768" />
            <wire x2="768" y1="960" y2="1536" x1="768" />
            <wire x2="992" y1="1536" y2="1536" x1="768" />
        </branch>
        <branch name="endXR">
            <wire x2="432" y1="1024" y2="1024" x1="400" />
            <wire x2="704" y1="1024" y2="1024" x1="432" />
            <wire x2="1040" y1="1024" y2="1024" x1="704" />
            <wire x2="704" y1="1024" y2="1616" x1="704" />
            <wire x2="992" y1="1616" y2="1616" x1="704" />
        </branch>
        <branch name="OSC_P123">
            <wire x2="432" y1="1088" y2="1088" x1="400" />
            <wire x2="1040" y1="1088" y2="1088" x1="432" />
        </branch>
        <iomarker fontsize="28" x="400" y="576" name="gx" orien="R180" />
        <iomarker fontsize="28" x="400" y="640" name="gy" orien="R180" />
        <iomarker fontsize="28" x="400" y="704" name="xDirIn" orien="R180" />
        <iomarker fontsize="28" x="400" y="768" name="yDirIn" orien="R180" />
        <iomarker fontsize="28" x="400" y="832" name="endYD" orien="R180" />
        <iomarker fontsize="28" x="400" y="896" name="endYU" orien="R180" />
        <iomarker fontsize="28" x="400" y="960" name="endXL" orien="R180" />
        <iomarker fontsize="28" x="400" y="1024" name="endXR" orien="R180" />
        <iomarker fontsize="28" x="400" y="1088" name="OSC_P123" orien="R180" />
        <instance x="992" y="1392" name="XLXI_28" orien="R0" />
        <instance x="992" y="1488" name="XLXI_29" orien="R0" />
        <branch name="XLXN_50">
            <wire x2="1248" y1="1360" y2="1360" x1="1216" />
        </branch>
        <instance x="1248" y="1392" name="XLXI_30" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="1248" y1="1456" y2="1456" x1="1216" />
        </branch>
        <instance x="1248" y="1488" name="XLXI_31" orien="R0" />
        <instance x="992" y="1568" name="XLXI_32" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="1248" y1="1536" y2="1536" x1="1216" />
        </branch>
        <instance x="1248" y="1568" name="XLXI_33" orien="R0" />
        <instance x="992" y="1648" name="XLXI_34" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="1248" y1="1616" y2="1616" x1="1216" />
        </branch>
        <instance x="1248" y="1648" name="XLXI_35" orien="R0" />
        <branch name="MN3_P92">
            <wire x2="1504" y1="1360" y2="1360" x1="1472" />
        </branch>
        <branch name="MN4_P88">
            <wire x2="1504" y1="1456" y2="1456" x1="1472" />
        </branch>
        <branch name="L3_P79">
            <wire x2="1504" y1="1536" y2="1536" x1="1472" />
        </branch>
        <branch name="L4_P78">
            <wire x2="1504" y1="1616" y2="1616" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1504" y="1360" name="MN3_P92" orien="R0" />
        <iomarker fontsize="28" x="1504" y="1456" name="MN4_P88" orien="R0" />
        <iomarker fontsize="28" x="1504" y="1536" name="L3_P79" orien="R0" />
        <iomarker fontsize="28" x="1504" y="1616" name="L4_P78" orien="R0" />
        <instance x="880" y="320" name="XLXI_52" orien="R0" />
        <branch name="XLXN_74">
            <wire x2="1136" y1="288" y2="288" x1="1104" />
        </branch>
        <instance x="1136" y="320" name="XLXI_53" orien="R0" />
        <instance x="880" y="224" name="XLXI_54" orien="R0" />
        <branch name="XLXN_75">
            <wire x2="1136" y1="192" y2="192" x1="1104" />
        </branch>
        <instance x="1136" y="224" name="XLXI_55" orien="R0" />
        <branch name="L6_P74">
            <wire x2="1392" y1="288" y2="288" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="288" name="L6_P74" orien="R0" />
        <branch name="L7_P67">
            <wire x2="1392" y1="192" y2="192" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="192" name="L7_P67" orien="R0" />
        <instance x="1824" y="400" name="XLXI_56" orien="R0" />
        <instance x="1824" y="288" name="XLXI_57" orien="R0" />
        <branch name="XLXN_80">
            <wire x2="2080" y1="368" y2="368" x1="2048" />
        </branch>
        <instance x="2080" y="400" name="XLXI_58" orien="R0" />
        <branch name="XLXN_81">
            <wire x2="2080" y1="256" y2="256" x1="2048" />
        </branch>
        <instance x="2080" y="288" name="XLXI_59" orien="R0" />
        <branch name="yDirOut">
            <wire x2="2336" y1="368" y2="368" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2336" y="368" name="yDirOut" orien="R0" />
        <branch name="xDirOut">
            <wire x2="2336" y1="256" y2="256" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2336" y="256" name="xDirOut" orien="R0" />
        <instance x="1008" y="1904" name="XLXI_36" orien="R0" />
        <branch name="enSH">
            <wire x2="1264" y1="1872" y2="1872" x1="1232" />
        </branch>
        <branch name="SW3_P59">
            <wire x2="1008" y1="1872" y2="1872" x1="976" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1872" name="enSH" orien="R0" />
        <iomarker fontsize="28" x="976" y="1872" name="SW3_P59" orien="R180" />
    </sheet>
</drawing>