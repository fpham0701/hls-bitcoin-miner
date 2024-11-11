<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="sha.prj" top="main">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="true" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../main.cpp" sc="0" tb="1" cflags=" -std=c++11 -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="sha256.cpp" sc="0" tb="false" cflags="-std=c++11" csimflags="" blackbox="false"/>
        <file name="util.cpp" sc="0" tb="false" cflags="-std=c++11" csimflags="" blackbox="false"/>
        <file name="miner.cpp" sc="0" tb="false" cflags="-std=c++11" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

