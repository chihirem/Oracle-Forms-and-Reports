<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="R7MATRIX" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="R7MATRIX" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforeReportHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
</head>
<body bgcolor="#ffffff">

]]>
    </beforeReportHtmlEscape>
    <afterPageHtmlEscape>
    <![CDATA[<hr size=5 noshade>
]]>
    </afterPageHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html dir=&Direction>
<body bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
    <pageNavigationHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
<TITLE>Oracle HTML Navigator</TITLE>
<SCRIPT type="text/javascript" LANGUAGE = "JavaScript">

var jump_index = 1			// Jump to this page
var num_pages = &TotalPages			// Total number of pages
var basefilename = "&file_name"		// Base file name
var fileext = "&file_ext"		//File extension

/* jumps to "new_page" */
function new_page(form, new_page)
{
	form.reqpage.value = new_page;
	parent.frames[0].location = basefilename + "_" + new_page + "."+fileext;
}

/* go back one page */
function back(form)
{
	/* if we are not in first page */
	if (jump_index > 1)
	{
		jump_index--;
		new_page(form, jump_index);
	}
}

/* go forward one page */
function forward(form)
{
	/* if we are not in last page */
	if (jump_index < num_pages)
	{
		jump_index++;
		new_page(form, jump_index);
	}
}

/* go to first page */
function first(form)
{
	if(jump_index != 1)
	{
		jump_index = 1;
		new_page(form, jump_index);
	}
}

/* go to last page */
function last(form)
{
	if(jump_index != num_pages)
	{
		jump_index = num_pages;
		new_page(form, jump_index);
	}
}

/* go to the user specified page number */
function pagenum(form)
{
	/* sanity check */
	if (form.reqpage.value < 1)
	{
		form.reqpage.value = 1;
	}
	if (form.reqpage.value > num_pages)
	{
		form.reqpage.value = num_pages;
	}
	jump_index = form.reqpage.value;
	new_page(form, jump_index);
}
</SCRIPT>
</HEAD>

<BODY>
<FORM NAME="ThisForm" action="" onSubmit="pagenum(this); return false;">
<center><table><tr>
<td> <INPUT TYPE="button"  VALUE="<< " onClick="first(this.form)">
<td> <INPUT TYPE="button"  VALUE=" < " onClick="back(this.form)">
<td> <INPUT TYPE="button"  VALUE="Page:" onClick="pagenum(this.form)">
<td> <INPUT NAME="reqpage" VALUE="1" SIZE=2>
<td> <INPUT TYPE="button"  VALUE=" > " onClick="forward(this.form)">
<td> <INPUT TYPE="button"  VALUE=" >>" onClick="last(this.form)">
</table></center>
</FORM>
</body></html>]]>
    </pageNavigationHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[select deptno,job,sal from emp]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_job">
        <displayInfo x="1.45007" y="1.94995" width="1.09998" height="0.43970"
        />
        <dataItem name="job" datatype="vchar2" columnOrder="12" width="9"
         defaultWidth="90000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Job">
          <dataDescriptor expression="job" descriptiveExpression="JOB"
           order="2" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
      <group name="G_deptno">
        <displayInfo x="1.45007" y="3.13965" width="1.09998" height="0.43970"
        />
        <dataItem name="deptno" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="40000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Deptno">
          <dataDescriptor expression="deptno" descriptiveExpression="DEPTNO"
           order="1" width="22" precision="2"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
      <group name="G_sal">
        <displayInfo x="1.45007" y="4.32935" width="1.09998" height="0.43970"
        />
        <dataItem name="sal" oracleDatatype="number" columnOrder="13"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="0"
         defaultLabel="Sal" breakOrder="none">
          <dataDescriptor expression="sal" descriptiveExpression="SAL"
           order="3" width="22" scale="2" precision="7"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <crossProduct name="G_Sumsal">
      <displayInfo x="1.15015" y="1.65002" width="1.69983" height="2.22925"/>
      <dimension>
        <group name="G_job"/>
      </dimension>
      <dimension>
        <group name="G_deptno"/>
      </dimension>
      <summary name="Sumsal" source="sal" function="sum" width="22"
       precision="7" scale="2" reset="G_deptno" compute="report"
       defaultWidth="90000" defaultHeight="10000" columnFlags="552"
       defaultLabel="Sumsal" productOrder="G_job G_deptno">
        <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"
        />
      </summary>
      <summary name="SumSumsalPerjob" source="Sumsal" function="sum"
       width="22" precision="7" scale="2" reset="G_job" compute="report"
       defaultWidth="90000" defaultHeight="10000" columnFlags="552"
       defaultLabel="Total:" productOrder="G_job">
        <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"
        />
      </summary>
      <summary name="SumSumsalPerdeptno" source="Sumsal" function="sum"
       width="22" precision="7" scale="2" reset="G_deptno" compute="report"
       defaultWidth="90000" defaultHeight="10000" columnFlags="552"
       defaultLabel="Total:" productOrder="G_deptno">
        <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"
        />
      </summary>
    </crossProduct>
    <summary name="SumSumsalPerReport" source="Sumsal" function="sum"
     width="22" precision="7" scale="2" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_Sumsal_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="4.12500" height="0.75000"
        />
        <generalLayout verticalElasticity="variable"
         horizontalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_job" source="G_job" printDirection="down"
         minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.37500" width="4.12500"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <field name="F_job" source="job" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="white"/>
            <geometryInfo x="0.00000" y="0.37500" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_SumSumsalPerjob" source="SumSumsalPerjob"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="2.75000" y="0.37500" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="Totals"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_job_HDR">
          <geometryInfo x="0.00000" y="0.18750" width="1.37500"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_job" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.18750" width="1.37500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Job]]>
              </string>
            </textSegment>
          </text>
        </frame>
        <repeatingFrame name="R_G_deptno" source="G_deptno"
         printDirection="across" minWidowRecords="1" columnMode="no">
          <geometryInfo x="1.37500" y="0.00000" width="1.37500"
           height="0.75000"/>
          <generalLayout verticalElasticity="expand"
           horizontalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <field name="F_deptno" source="deptno" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="white"/>
            <geometryInfo x="1.37500" y="0.00000" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_Sumsal" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.37500" y="0.18750" width="1.37500"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Sumsal]]>
              </string>
            </textSegment>
          </text>
          <field name="F_Sumsal" source="Sumsal" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="1.37500" y="0.37500" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="Totals"/>
          </field>
          <field name="F_SumSumsalPerdeptno" source="SumSumsalPerdeptno"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="1.37500" y="0.56250" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="Totals"/>
          </field>
        </repeatingFrame>
        <field name="F_SumSumsalPerReport" source="SumSumsalPerReport"
         minWidowLines="1" spacing="0" alignment="start">
          <font face="helvetica" size="10" bold="yes"/>
          <geometryInfo x="2.75000" y="0.56250" width="1.37500"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
        </field>
        <frame name="M_G_deptno_HDR">
          <geometryInfo x="0.87500" y="0.00000" width="0.50000"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_deptno" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.87500" y="0.00000" width="0.50000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Deptno]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
      <matrix name="X_G_Sumsal" horizontalFrame="R_G_job"
       verticalFrame="R_G_deptno" xProductGroup="G_Sumsal">
        <geometryInfo x="1.37500" y="0.37500" width="1.37500" height="0.18750"
        />
      </matrix>
    </body>
    <margin>
      <image name="B_1_SEC2" templateSection="main">
        <geometryInfo x="0.50000" y="0.37500" width="1.40625" height="0.37500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.40625" y="0.37500"/>
          <point x="0.50000" y="0.37500"/>
          <point x="1.40625" y="0.37500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
74946483 93167800 42007F00 00FFFFFF 5E2B999F CE6EBC56 432F9DCC CE5C3B7E
7BF9CF5F 2FDFAF9F 8ECB6ADE AC9BFEFC FB5F2E9D 4FDD2DAE 0CCA7F7E FDAF1FCE
0F4D6CEC F614FDF9 08BD5937 2E8AD85D 28A55E2B A98DC876 FEFC0C2D 87D43EDA
396D7806 DCA6A30E 4A680000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00129F40 00000000 00C20000 00007800 42000080
FF003080 C1840B0A 1C388031 A2C58C01 1E60C0A1 6084C10D 18305868 8133E043
08000874 0020A061 8F820A0C 143040A3 E7400408 0E8C5912 90E7C69B 071C1859
8317E189 830804EC F90438A0 51811A0E 28599080 A18B9C27 162080B2 96A0C794
2B0ECC68 C15829C9 8614BA7D FA8350A0 05050508 749A20B1 87C60855 563D1845
D36CC187 5B1E15FA 90626500 BC7DBA85 406080A3 00070203 C5F870C0 A2020112
921CBBF6 7A2EC9B2 0BEA0470 20233307 C20D0C75 A031D76F D1DF35C2 08705090
89CD8C47 18258AF1 D53146A8 63E284BA 76D5EA44 D23DBA40 98212821 06AC2983
05202A5B A9600467 36145BE1 D0B0C4EE 1103148E 5B723EE8 C102E230 5AE590C4
FF4A0B2F 04508830 4387C20F B5381F99 4103468C 021C67EC 5E808371 450F1313
148DB292 010C0810 CD540018 108D6200 2810C747 0218E080 02121060 02809505
51C00A1A D670860A 1E400046 8A1E004D 97491288 00C50304 0724D086 6974B023
810810E6 5C840EF4 F0E08F25 E8902E46 3E08E0AC 824A10FE DF461C88 F2EA4218
68914104 14203223 083D4030 060E1130 A1AA7D26 00942001 18C8F0CA 4F363893
1F8B3228 A023814A 09862081 49003267 583169A1 21002610 A12B8F19 A842A747
0C196F1E 4E2EA480 420802F7 26AA9562 A9E1999E 3A2A000F 823A100D 97587A68
B71E4C72 5031CD44 1C7826A6 8276F538 EA450028 52220C06 79E1D9A4 0640D823
FFA98228 B6AE8004 30C02CAE 5D7A576E 474EA825 200326C5 45E00710 965AE74E
AE085220 06821871 20070038 1CE3080A 76B21EA4 06205B6F 8E523816 A65B4EA8
931C9A1E 1B004603 2A173E66 08C27983 D2B1043B 2965A708 30C0AA43 DA58F114
05124BDD EB480CFB 30620E61 E8322971 F6E9C498 83A20047 6F914110 5462BDA2
AA93D0CC 0A10500E BC02572F EC8D1BC8 94A3A75E 7C249883 007B831F A99200E1
A1B00CB8 40C88EEE A4C4DF90 CA0A0FA9 A8179BC6 238E0C1C 0140DCF6 0CB297C3
021914DF A300BA2C 23903E88 40C50F2E 1032A59B 7EB405A6 8A0F7461 3002F63B
E1D3040B 09A0C1C7 5E9D2361 070B9C03 2381DA38 32E00FE9 AB4E63A3 2E401716
FF095F50 51840455 7D30C7DE 158D3670 580010FC E1A05F74 70C20C67 00E040BB
21CDE190 8802BA50 40E57360 710175CE 7D20C292 83E47041 BF1679A3 B4069F1E
78619E15 3039FCBD 19482000 82082DCC AF8F5218 596DAE59 6B8068BB 2DFE0969
DB1C40B1 4FEE0E60 E18EAE72 1C31CBE0 086E30EC D8351D7D E3E83D20 F3FA4CDF
08E66CA0 4E0F7DEF 43E3DA83 16F3FE5E 30A4F6EB 7BF195B4 060AB821 86D705A4
39DFF26B 83120400 60806940 C003002F B59810F0 8404C902 0C00704A E800708C
AA50A17E 18C0C7F4 30A00A00 65140300 6B930440 8386D310 440F72A0 81022A20
8704C941 060890C5 0C10BC7F 1960030B 1883970C 90F3231C 00420E06 62C215A0
FFF08389 598C0768 F1930C01 D8700830 C7016883 170C0039 300260C0 0B2500AE
1AB0198C 3C102BCC 32F007BC 10E6846A C9C01528 C0C40698 478C04AE 040E6850
860C2061 8834F8C1 1338B299 0627400F 2A136008 92C7CE26 D1100F2C 10A174F8
B2980031 5A8C040A 0601D8C0 4FE10003 8C0462AD 09C873C2 2E748E87 0C7D1B17
F89C940C 71900942 D2622938 C4424A12 518712B2 632182A3 484E10D0 0A6BF841
2329974C 42C11728 94AE8903 00B74AAC 20023508 256B0DB2 E74D4631 D78B2140
CD0172D5 2508C2F0 8B2C59C5 2F68D5AE 1AE2148C B423AF27 A8F1131E 7481069B
00813709 F3140032 38779473 D01709F3 CF802028 7ADC306A 2D9889CC 6291939C
FFDC59C3 1F081CBF 5EE1DC9E 19300029 0AE11356 05E10C8C F3EA4A09 4D175E02
3005D461 291108E1 977ED0FB 9C0C1C04 06387CCF 8864708E 6244A742 8893110E
93BC8E19 11610A00 D0551243 9F85EB72 67335928 423E6113 9515E4EB EC59E6AF
5E10D637 6C076F3F 1A805008 24D327B4 23EEF082 77CE62D2 F725FC09 2357B96C
180CB0D0 024C1064 B81A1003 0C20E06E C407E941 D941CC9E E41395B4 85A55100
4D4AAAE2 7DA46CA8 205CF842 50BCD170 A94500CF 275A4756 0A6F282B 0CE6E001
7A55D146 35D9AA51 572303E9 A5198203 D8A39514 20619A89 462EB191 88150044
062A3B45 B52695AA ACD66002 87E0C89A 71529808 FC6B192B 17924E56 D6989CEC
35AB6B29 B29DCA16 56A9B4C4 60613990 86042901 020880CF 31E8C081 E617F8B1
08500F15 007DC7EA 0558BC7C B3A47500 AAD10613 5AB9D57E A471287D 523257BA
BABCBE66 7D4B8ED4 FAA77DBC ED6FAB7F DB6AD080 00B3DCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDFDF
        </binaryData>
      </image>
      <text name="B_OR$BODY_SECTION" minWidowLines="1">
        <textSettings spacing="0"/>
        <geometryInfo x="3.59998" y="0.25000" width="1.30005" height="0.16675"
        />
        <textSegment>
          <font face="Courier New" size="10"/>
          <string>
          <![CDATA[Employee Salary]]>
          </string>
        </textSegment>
      </text>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#000000"/>
    <color index="191" displayName="TableHeading" value="#cc6635"/>
    <color index="192" displayName="TableCell" value="#f2d9cc"/>
    <color index="193" displayName="Totals" value="#e5b29a"/>
  </colorPalette>
  <reportPrivate defaultReportType="matrix" versionFlags2="0"
   templateName="rwpeach" sectionTitle="Employee Salary"/>
  <reportWebSettings>
  <![CDATA[]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<html>

<head>
<meta name="GENERATOR" content="Oracle 9i Reports Developer"/>
<title> Your Title </title>

<rw:style id="yourStyle">
   <!-- Report Wizard inserts style link clause here -->
</rw:style>

</head>


<body>

<rw:dataArea id="yourDataArea">
   <!-- Report Wizard inserts the default jsp here -->
</rw:dataArea>



</body>
</html>

<!--
</rw:report> 
-->
