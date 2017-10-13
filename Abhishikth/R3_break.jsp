<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="R3_break" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="R3_BREAK" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
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
      <![CDATA[SELECT ALL EMPLOYEES.EMPLOYEE_ID, EMPLOYEES.FIRST_NAME, EMPLOYEES.LAST_NAME, EMPLOYEES.SALARY, 
DEPARTMENTS.DEPARTMENT_NAME, DEPARTMENTS.DEPARTMENT_ID
FROM EMPLOYEES, DEPARTMENTS
WHERE ((EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID))]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_1">
        <displayInfo x="1.12097" y="1.94995" width="1.75818" height="0.61963"
        />
        <dataItem name="DEPARTMENT_ID" oracleDatatype="number"
         columnOrder="16" width="22" defaultWidth="60000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Department Id">
          <dataDescriptor expression="DEPARTMENTS.DEPARTMENT_ID"
           descriptiveExpression="DEPARTMENT_ID" order="6"
           oracleDatatype="number" width="22" precision="4"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DEPARTMENT_NAME" datatype="vchar2" columnOrder="15"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Department Name">
          <dataDescriptor expression="DEPARTMENTS.DEPARTMENT_NAME"
           descriptiveExpression="DEPARTMENT_NAME" order="5" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
      <group name="G_EMPLOYEE_ID">
        <displayInfo x="1.26746" y="3.31958" width="1.46521" height="0.97949"
        />
        <dataItem name="EMPLOYEE_ID" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Employee Id">
          <dataDescriptor expression="EMPLOYEES.EMPLOYEE_ID"
           descriptiveExpression="EMPLOYEE_ID" order="1"
           oracleDatatype="number" width="22" precision="6"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FIRST_NAME" datatype="vchar2" columnOrder="12"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="First Name">
          <dataDescriptor expression="EMPLOYEES.FIRST_NAME"
           descriptiveExpression="FIRST_NAME" order="2" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="LAST_NAME" datatype="vchar2" columnOrder="13"
         width="25" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Last Name">
          <dataDescriptor expression="EMPLOYEES.LAST_NAME"
           descriptiveExpression="LAST_NAME" order="3" width="25"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="SALARY" oracleDatatype="number" columnOrder="14"
         width="22" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Salary">
          <dataDescriptor expression="EMPLOYEES.SALARY"
           descriptiveExpression="SALARY" order="4" oracleDatatype="number"
           width="22" scale="2" precision="8"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_1_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="5.18750" height="0.56250"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_1" source="G_1" printDirection="down"
         minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.00000" width="5.18750"
           height="0.56250"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_DEPARTMENT_ID" source="DEPARTMENT_ID"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="1.00000" y="0.00000" width="0.93750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <frame name="M_G_EMPLOYEE_ID_GRPFR">
            <geometryInfo x="0.00000" y="0.18750" width="5.18750"
             height="0.37500"/>
            <generalLayout verticalElasticity="variable"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g100b100"/>
            <repeatingFrame name="R_G_EMPLOYEE_ID" source="G_EMPLOYEE_ID"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="0.37500" width="5.18750"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableCell"/>
              <field name="F_EMPLOYEE_ID" source="EMPLOYEE_ID"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="0.00000" y="0.37500" width="1.18750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_FIRST_NAME" source="FIRST_NAME" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="1.18750" y="0.37500" width="1.25000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_LAST_NAME" source="LAST_NAME" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="2.43750" y="0.37500" width="1.25000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_SALARY" source="SALARY" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="3.68750" y="0.37500" width="1.50000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_EMPLOYEE_ID_HDR">
              <geometryInfo x="0.00000" y="0.18750" width="5.18750"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableHeading"/>
              <text name="B_EMPLOYEE_ID" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.18750" width="1.18750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Employee Id]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_FIRST_NAME" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.18750" y="0.18750" width="1.25000"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[First Name]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_LAST_NAME" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="2.43750" y="0.18750" width="1.25000"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Last Name]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_SALARY" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.68750" y="0.18750" width="1.50000"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Salary]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_DEPARTMENT_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="1.00000"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Department Id]]>
              </string>
            </textSegment>
          </text>
          <field name="F_DEPARTMENT_NAME" source="DEPARTMENT_NAME"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="3.18750" y="0.00000" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_DEPARTMENT_NAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.93750" y="0.00000" width="1.25000"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Department Name]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
      </frame>
    </body>
    <margin>
      <image name="B_1_SEC2" templateSection="main">
        <geometryInfo x="0.50000" y="0.31250" width="1.40625" height="0.37500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.40625" y="0.37500"/>
          <point x="0.50000" y="0.31250"/>
          <point x="1.40625" y="0.37500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
74946483 93167800 42007F00 00FFFFFF 5689BC23 56899D5E 2F2BCC5E C82B8DF6
E9EC5F9F CFCE2F9F 598BBDF9 FBFDCB2D 8E875A2D FCFDFE28 BA5D2ECE 5F8A5C2E
5C8DCEF3 F6E9CC9D 5E2F5F9F 2B5C8D27 598BF7F9 FB5ECE2F C88A5C85 28BA992B
CCFBFCFD 9D2ECE56 C82BC487 5A5ACB2D 26598C85 B8EB2C2D 2EC4F72B 26292C53
86B9F327 5A25588B 84B7EACC CDCE0000 00000000 00000000 00000000 00000000
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
FF003080 C1840B0A 1C388031 A2C58C01 16802172 40844106 2250A868 8133E043
07000874 0030A061 8F830A0C 143040A3 E7400408 0E8C5912 90E7C69B 05102859
83172589 820624EC F90438A0 51801A0A 2859C080 A18B9C27 123870B2 96A0C794
2B0ECC68 C158E74C 0315386D FA0617A0 C1090A0E 00F82550 E20F8B00 BAAC6A30
9AA7C893 0FA63C3A F514C4CC 016BFE7D 1B70C001 47000018 0E8BE111 81C40400
24252887 1EE45C94 750AD518 E06086E8 0F850A10 0B6162AF 4FB4AF7E 8500D0A0
21039B19 9A205A05 F3EB628C 43DAC509 651DABC5 99A56E75 90215240 D9041E32
17DA3164 B6D3D00A CE6C28B6 D3E16184 00760628 1DD635EC D29308CD 80A4FBE4
FF898616 5258C0E1 E3808F0E 1B200FF0 5C37E40B 0E183070 90516970 83B00E04
7E2890C7 48040040 2181BDA4 90418100 E5408287 BD00A060 0F153850 A3030C58
40810A06 46145602 0C789FDA 441C70F1 E5000878 F1A00ACD 74E1A980 0C602080
724118CF 10001648 10810F6D D850EF44 1218F2DF 810C3811 E4883E19 60035249
60922609 3940F127 05185002 4A8D10E4 71800E18 74D1C78C EDC8104D 80004083
630B21F8 40AF8E0A 7424219A 0A1974A3 87060581 4A8E51E4 D5E78318 9851C782
3E7403AA 8E1150C4 688141D8 B2D10C08 2810E995 46E4D62B 9B6A3AF6 A4A176E8
1DD75D7E 78C71E41 8A507141 761498B2 5D920CD9 E712AB25 10A06579 864826A7
FF4CA618 0185A042 E486A486 BE0900C2 0116DAF5 D8AA76E4 C46C8752 0092A1A0
046920C6 05A9AAF1 DCA40ABA B2D2A502 7800C08A 0640E153 0A0E76B2 9FA50230
07EDA366 4866A650 56C89399 ADCA74C1 4A81F974 BE270FC6 898394B1 005B5E21
899220E0 448A296B 7DE74F08 6850FEAF 2D108031 8C0CB5F3 D4092697 83D6A214
C7822AA0 04E92860 531CCBF1 14B2B6BA 9313C11A 105040C1 12FBAF6E 8923E853
64AE1540 B2B0582A 00024E42 C67A0009 8FEA3900 84C152E4 1F11A6C2 E422300A
F2FBF15E A17A3001 F3079E68 B29CCE19 AC406291 451B2000 DB25A86F 200EEE40
B100D414 A8B520A1 2659F125 C123EBBA 29CF3530 D0F19900 4C337DD8 361001B5
FFD63648 8DE7424F 78023001 F2BBE1D0 E7182BE1 0ADB1460 2181AC6B 00E6B749
4F2D14D1 04085BC8 6CAB2120 A08ED108 30CD2E4E 730090A2 81B65009 7A8A5E60
3F23BE63 600564E4 433B52A7 D0081D21 C1BF6718 9082983D 202AFEBD 1D5830C1
83006D3D 2EA46618 9969BF59 8BA06ABB 2D3FF8E7 4D048022 480DCF48 1249032C
7ED0B80A 20E49A31 8183E425 F7BE97E4 A08CDB25 BF6024AD 3E4FFDEF 44F75A80
ACF00058 0CAF8010 20040CBD 43080850 40BC0011 85ABFA83 0018C43F 88108080
E2C9C205 75F51600 20308831 D0220908 93930C40 908CFAB0 6CAC382C 311E7058
70085041 02101BA1 1ED60100 1871630D 3230080E F421040C 64950118 83920010
FF938000 500207E4 B2950C70 14893930 29075271 46004C27 8C43E122 0903B213
2E11F328 00B2A5F0 0080811E 01172F0C 0005BE04 1102066A E0471C02 E6150840
427D74A1 0F6140C2 1138831B 2690F384 446A9315 78F1970C 21B00B00 50870998
F11D2EA0 1A8F44C1 2F7CE810 06AC00A6 4D6C5980 19082CB5 02FB020F 5C23201F
72A2CD3E 70FD7E11 51E70FB8 A4CB3E21 1B8F1934 230752E4 4A6D008A 5C009320
080049CF 4E74A689 08F2200E 292C3600 782D8F1C 0AC10549 804300ED E3279C15
232559F1 CBD8A29F 593433E7 46004515 0446A009 B444A050 29CA4036 00C69008
30C21172 26A40023 118E3C42 AA25C471 4866004A 9774A663 210093CF 8440A181
FF08E62E 11827082 364F2593 72B2A731 0025CF8C 102A71F4 40AF23C8 FEC76E70
D593F4C9 8811181D BA6AC2BF 9E114084 293AE19A 4A13D392 CBB42FB8 8970D004
B3F7877C A0A74C0A B44B7E70 903F0071 AE2F5A77 C93962FA 96DCF1AF 317253C2
0410C39D 3447E421 98264C90 10D79074 55AB1559 B2575ED0 98937AA6 220F63A7
4E9ED6E7 902DB5ED 49BA0DCB 1A05419A 4D00823F 72D0DFA6 33FE82CB 70801D00
5542026B A10F0430 8200266E CB765337 240CF9A5 25E9BC40 ACF1BCAA 254B243F
9A0550B0 4290884C 0A82273A D55C76F5 B9AFFC5B E707D714 1F021630 0C4D4BE1
4D2BB441 B68098A9 05DA0A4B 7A2954DA 75BBA225 F808679A B2114E70 D5A00080
074A4399 873FC656 5E9A6C0A 404FE8C0 025693D6 BF148CAC 5E29E756 6AA296B4
CD356C6F 6BCE469E D111B2F4 60C20A64 70810040 E2A38C80 0675BBCD D0082062
9308456F 39CB8152 FA229CB3 942AE559 DB3007FA 871EB314 8FED1FAB AE5862C7
5EBCBDEF AF7FFB00 E00B0870 C406ED60 4000B3DC DCDCDCDC DCDCDCDC DCDCDCDC
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
        <geometryInfo x="3.46997" y="0.25000" width="1.56006" height="0.16675"
        />
        <textSegment>
          <font face="Courier New" size="10"/>
          <string>
          <![CDATA[Department wise Employee Report]]>
          </string>
        </textSegment>
      </text>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#336699"/>
    <color index="191" displayName="TableHeading" value="#336699"/>
    <color index="192" displayName="TableCell" value="#e0f0ff"/>
    <color index="193" displayName="Totals" value="#c5e3ff"/>
  </colorPalette>
  <reportPrivate defaultReportType="masterDetail" versionFlags2="0"
   templateName="rwblue" sectionTitle="Department wise Employee Report"/>
  <reportWebSettings>
  <![CDATA[]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>

<HEAD>
  <TITLE> Your Title </TITLE>
  <rw:style id="rwblue72">
<link rel="StyleSheet" type="text/css" href="css/rwblue.css">
</rw:style>

  <META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</HEAD>

<BODY bgColor="#ffffff" link="#000000" vLink="#000000">

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ffffff" rowSpan=2 vAlign=middle width=188><IMG alt="" src="images/rwblue_logo.gif" width="135" height="36"></TD>
    <TD bgColor="#ffffff" height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor="#ffffff" vAlign=bottom>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE bgColor="#ff0000" border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" class="OraColumnHeader">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor="#000000" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#9a9c9a" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#b3b4b3" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top">
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
      <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MG1GRPFR72">
<rw:foreach id="RG1721" src="G_1">
<!-- Start GetGroupHeader/n --> <table class="OraTable">
 <caption class="OraHeader"> Department wise Employee Report <br>Department Id <rw:field id="F_DEPARTMENT_ID" src="DEPARTMENT_ID" breakLevel="RG1721" breakValue="&nbsp;"> F_DEPARTMENT_ID </rw:field><br>
Department Name <rw:field id="F_DEPARTMENT_NAME" src="DEPARTMENT_NAME" breakLevel="RG1721" breakValue="&nbsp;"> F_DEPARTMENT_NAME </rw:field><br>
 </caption>
<!-- End GetGroupHeader/n -->   <tr>
    <td valign="top">
    <table class="OraTable" summary="Department wise Employee Report">
     <!-- Header -->
     <thead>
      <tr>
       <th <rw:id id="HBEMPLOYEEID72" asArray="no"/> class="OraColumnHeader"> Employee Id </th>
       <th <rw:id id="HBFIRSTNAME72" asArray="no"/> class="OraColumnHeader"> First Name </th>
       <th <rw:id id="HBLASTNAME72" asArray="no"/> class="OraColumnHeader"> Last Name </th>
       <th <rw:id id="HBSALARY72" asArray="no"/> class="OraColumnHeader"> Salary </th>
      </tr>
     </thead>
     <!-- Body -->
     <tbody>
      <rw:foreach id="RGEMPLOYEEID721" src="G_EMPLOYEE_ID">
       <tr>
        <td <rw:headers id="HFEMPLOYEEID72" src="HBEMPLOYEEID72"/> class="OraCellNumber"><rw:field id="FEMPLOYEEID72" src="EMPLOYEE_ID" nullValue="&nbsp;"> F_EMPLOYEE_ID </rw:field></td>
        <td <rw:headers id="HFFIRSTNAME72" src="HBFIRSTNAME72"/> class="OraCellText"><rw:field id="FFIRSTNAME72" src="FIRST_NAME" nullValue="&nbsp;"> F_FIRST_NAME </rw:field></td>
        <td <rw:headers id="HFLASTNAME72" src="HBLASTNAME72"/> class="OraCellText"><rw:field id="FLASTNAME72" src="LAST_NAME" nullValue="&nbsp;"> F_LAST_NAME </rw:field></td>
        <td <rw:headers id="HFSALARY72" src="HBSALARY72"/> class="OraCellNumber"><rw:field id="FSALARY72" src="SALARY" nullValue="&nbsp;"> F_SALARY </rw:field></td>
       </tr>
      </rw:foreach>
     </tbody>
     <tr>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</rw:foreach>
<table class="OraTable" summary="Department wise Employee Report">
</table>
</rw:dataArea> <!-- id="MG1GRPFR72" -->
<!-- End of Data Area Generated by Reports Developer -->

      </DIV>
    </TD>
  </TR>
</TABLE>

<P>
  <BR>
</P>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ff0000" colSpan=2 class="OraColumnHeader"><IMG alt="" border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ffffff">&nbsp;</TD>
    <TD align=right bgColor="#ffffff">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

</BODY>

</HTML>

<!--
</rw:report>
-->
