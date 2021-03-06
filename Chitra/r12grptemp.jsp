<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="r12grptemp" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE9" xmlPrologType="text">
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
      <![CDATA[select * from emp,dept where emp.deptno=dept.deptno]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_DNAME">
        <displayInfo x="1.15759" y="1.94995" width="1.68494" height="0.97949"
        />
        <dataItem name="DNAME" datatype="vchar2" columnOrder="20" width="14"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Dname">
          <dataDescriptor expression="dept.DNAME"
           descriptiveExpression="DNAME" order="10" width="14"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DEPTNO1" oracleDatatype="number" columnOrder="19"
         width="22" defaultWidth="40000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Deptno1">
          <dataDescriptor expression="dept.DEPTNO"
           descriptiveExpression="DEPTNO" order="9" width="22" precision="2"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="LOC" datatype="vchar2" columnOrder="21" width="13"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Loc">
          <dataDescriptor expression="dept.LOC" descriptiveExpression="LOC"
           order="11" width="13"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <summary name="SumSALPerDNAME" source="SAL" function="sum" width="22"
         precision="7" scale="2" reset="G_DNAME" compute="report"
         defaultWidth="90000" defaultHeight="10000" columnFlags="552"
         defaultLabel="Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
      </group>
      <group name="G_EMPNO">
        <displayInfo x="1.37732" y="3.67944" width="1.24548" height="1.69922"
        />
        <dataItem name="EMPNO" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="60000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Empno">
          <dataDescriptor expression="emp.EMPNO" descriptiveExpression="EMPNO"
           order="1" width="22" precision="4"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ENAME" datatype="vchar2" columnOrder="12"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Ename">
          <dataDescriptor expression="emp.ENAME" descriptiveExpression="ENAME"
           order="2" width="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="JOB" datatype="vchar2" columnOrder="13" width="9"
         defaultWidth="90000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Job">
          <dataDescriptor expression="emp.JOB" descriptiveExpression="JOB"
           order="3" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="MGR" oracleDatatype="number" columnOrder="14"
         width="22" defaultWidth="60000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Mgr">
          <dataDescriptor expression="emp.MGR" descriptiveExpression="MGR"
           order="4" width="22" precision="4"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="HIREDATE" datatype="date" oracleDatatype="date"
         columnOrder="15" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Hiredate">
          <dataDescriptor expression="emp.HIREDATE"
           descriptiveExpression="HIREDATE" order="5" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="SAL" oracleDatatype="number" columnOrder="16"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Sal">
          <dataDescriptor expression="emp.SAL" descriptiveExpression="SAL"
           order="6" width="22" scale="2" precision="7"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="COMM" oracleDatatype="number" columnOrder="17"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Comm">
          <dataDescriptor expression="emp.COMM" descriptiveExpression="COMM"
           order="7" width="22" scale="2" precision="7"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DEPTNO" oracleDatatype="number" columnOrder="18"
         width="22" defaultWidth="40000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Deptno">
          <dataDescriptor expression="emp.DEPTNO"
           descriptiveExpression="DEPTNO" order="8" width="22" precision="2"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <summary name="SumSALPerReport" source="SAL" function="sum" width="22"
     precision="7" scale="2" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_DNAME_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.43750" height="0.56250"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_DNAME" source="G_DNAME"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.12500" width="7.43750"
           height="0.31250"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <frame name="M_G_EMPNO_GRPFR">
            <geometryInfo x="1.93750" y="0.12500" width="5.50000"
             height="0.31250"/>
            <generalLayout verticalElasticity="variable"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g100b100"/>
            <repeatingFrame name="R_G_EMPNO" source="G_EMPNO"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="1.93750" y="0.12500" width="5.50000"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableCell"/>
              <field name="F_EMPNO" source="EMPNO" minWidowLines="1"
               spacing="0" alignment="center">
                <font face="helvetica" size="7" textColor="darkmagenta"/>
                <geometryInfo x="1.93750" y="0.12500" width="0.68750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r88g88b75"/>
              </field>
              <field name="F_ENAME" source="ENAME" minWidowLines="1"
               spacing="0" alignment="center">
                <font face="helvetica" size="7"/>
                <geometryInfo x="2.62500" y="0.12500" width="0.50000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_JOB" source="JOB" minWidowLines="1" spacing="0"
               alignment="center">
                <font face="helvetica" size="7"/>
                <geometryInfo x="3.12500" y="0.12500" width="0.56250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_MGR" source="MGR" minWidowLines="1" spacing="0"
               alignment="center">
                <font face="helvetica" size="7" textColor="darkmagenta"/>
                <geometryInfo x="3.81250" y="0.12500" width="0.50000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r88g88b75"/>
              </field>
              <field name="F_HIREDATE" source="HIREDATE" minWidowLines="1"
               spacing="0" alignment="center">
                <font face="helvetica" size="7" textColor="white"/>
                <geometryInfo x="4.31250" y="0.12500" width="1.00000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="darkcyan"/>
              </field>
              <field name="F_SAL" source="SAL" minWidowLines="1" spacing="0"
               alignment="center">
                <font face="helvetica" size="7" textColor="darkmagenta"/>
                <geometryInfo x="5.31250" y="0.12500" width="1.12500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r88g88b75"/>
              </field>
              <field name="F_COMM" source="COMM" minWidowLines="1" spacing="0"
               alignment="center">
                <font face="helvetica" size="7" textColor="darkmagenta"/>
                <geometryInfo x="6.43750" y="0.12500" width="1.00000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r88g88b75"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_EMPNO_FTR">
              <geometryInfo x="1.93750" y="0.31250" width="4.68750"
               height="0.12500"/>
              <advancedLayout printObjectOnPage="lastPage"
               basePrintingOn="anchoringObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="Totals"/>
              <field name="F_SumSALPerDNAME" source="SumSALPerDNAME"
               minWidowLines="1" spacing="0" alignment="center">
                <font face="helvetica" size="7" bold="yes" textColor="r75g0b0"
                />
                <geometryInfo x="5.31250" y="0.31250" width="1.12500"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r100g100b75"/>
              </field>
              <text name="B_Total_" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.93750" y="0.31250" width="0.31250"
                 height="0.12500"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r100g100b75"/>
                <textSegment>
                  <font face="helvetica" size="7" bold="yes"
                   textColor="r75g25b0"/>
                  <string>
                  <![CDATA[Total:]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <field name="F_DNAME" source="DNAME" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="7" bold="yes" textColor="TextColor"/>
            <geometryInfo x="0.00000" y="0.12500" width="0.68750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r75g88b75"/>
          </field>
          <field name="F_DEPTNO1" source="DEPTNO1" minWidowLines="1"
           spacing="0" alignment="center">
            <font face="helvetica" size="7" bold="yes" textColor="TextColor"/>
            <geometryInfo x="0.68750" y="0.12500" width="0.43750"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r75g88b75"/>
          </field>
          <field name="F_LOC" source="LOC" minWidowLines="1" spacing="0"
           alignment="center">
            <font face="helvetica" size="7" bold="yes" textColor="TextColor"/>
            <geometryInfo x="1.12500" y="0.12500" width="0.62500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r75g88b75"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_DNAME_FTR">
          <geometryInfo x="0.00000" y="0.43750" width="6.62500"
           height="0.12500"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Totals"/>
          <field name="F_SumSALPerReport" source="SumSALPerReport"
           minWidowLines="1" spacing="0" alignment="center">
            <font face="helvetica" size="7" bold="yes"/>
            <geometryInfo x="5.31250" y="0.43750" width="1.12500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="Totals"/>
          </field>
          <text name="B_Total_1" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.43750" width="0.31250"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g100b75"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="r75g25b0"
              />
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
        </frame>
        <frame name="M_G_DNAME_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="7.43750"
           height="0.12500"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_DNAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.68750"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="darkmagenta"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Dname]]>
              </string>
            </textSegment>
          </text>
          <text name="B_DEPTNO1" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.68750" y="0.00000" width="0.43750"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="darkmagenta"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Deptno1]]>
              </string>
            </textSegment>
          </text>
          <text name="B_LOC" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="1.12500" y="0.00000" width="0.62500"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="darkmagenta"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Loc]]>
              </string>
            </textSegment>
          </text>
          <text name="B_EMPNO" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="1.93750" y="0.00000" width="0.68750"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Empno]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ENAME" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="2.62500" y="0.00000" width="0.50000"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Ename]]>
              </string>
            </textSegment>
          </text>
          <text name="B_JOB" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="3.12500" y="0.00000" width="0.56250"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Job]]>
              </string>
            </textSegment>
          </text>
          <text name="B_MGR" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="3.81250" y="0.00000" width="0.50000"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Mgr]]>
              </string>
            </textSegment>
          </text>
          <text name="B_HIREDATE" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="4.31250" y="0.00000" width="1.00000"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Hiredate]]>
              </string>
            </textSegment>
          </text>
          <text name="B_SAL" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="5.31250" y="0.00000" width="1.12500"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Sal]]>
              </string>
            </textSegment>
          </text>
          <text name="B_COMM" minWidowLines="1">
            <textSettings justify="center" spacing="0"/>
            <geometryInfo x="6.43750" y="0.00000" width="1.00000"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Comm]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <image name="B_1_SEC2" templateSection="main">
        <geometryInfo x="0.43750" y="0.06250" width="1.31250" height="0.75000"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.31250" y="0.75000"/>
          <point x="0.43750" y="0.06250"/>
          <point x="1.31250" y="0.75000"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
FF8DFF0E 0001A464 94640010 10100006 00060000 FFBD0048 0001B0C0 E0C0A001
E0D0E021 11013181 82A18161 61811332 52D182A3 33D3C393 33837304 84C5E404
44755473 8305D615 75F52676 8676E3D4 17970746 87C55676 36101121 21815181
F2A1A1F2 36248324 36363636 36363636 36363636 36363636 36363636 36363636
36363636 36363636 36363636 36363636 36363636 36363636 3636FF4C 102A0000
10501010 10101010 00000000 00000000 10203040 50607080 90A0B001 00201030
30204030 50504040 000010D7 10203000 40115021 12131460 31151670 22174123
18191A80 32241B1C 51251D0F 42332627 2890A061 718191A1 52627282 92A24353
63738393 A3344454 64748494 A4354555 65758595 A5364656 66768696 A6374757
67778797 A7384858 68788898 A8293949 59697989 99A92A3A 4A5A6A7A 8A9AAA2B
3B4B5B6B 7B8B9BAB 2C3C4C5C 6C7C8C9C AC2D3D4D 5D6D7D8D 9DAD1E2E 3E4E5E6E
7E8E9EAE 1F2F3F4F 5F6F7F8F 9FAF1000 30101010 10101010 10100000 00000000
10203040 50607080 90A0B011 00201020 40403040 70504040 00102077 00102030
11405012 13602114 15701617 31222318 80412419 1A1B1C90 3233250F 5126271D
A0614243 1E521F71 8191A162 728292A2 53637383 93A33444 54647484 94A43545
55657585 95A53646 56667686 96A63747 57677787 97A72838 48586878 8898A829
39495969 798999A9 2A3A4A5A 6A7A8A9A AA2B3B4B 5B6B7B8B 9BAB2C3C 4C5C6C7C
8C9CAC2D 3D4D5D6D 7D8D9DAD 2E3E4E5E 6E7E8E9E AE2F3F4F 5F6F7F8F 9FAFFF0C
00118020 85300230 00110010 11102011 10FFAD00 C0300000 10112011 00F3009A
F7B352FA FD7C5B97 41368AC1 398CBFEB 9FFAD500 DDFEDFAF 0073FB7F 8E00EDFF
00FD0A30 B7FF00E7 08D0FEDF AF0073FB 7F8E00ED FF00FD0A 503FF1BF 4D0097F8
DFAE007B 76D7523B 7693CAAA 256E30E5 D287F1DB C5F75511 66D3D4F1 085D791B
29204D27 13FE851B 21E2A600 E7CE7753 0233975F BA00DC00 B18CFE84 3042FF00
513071F9 A509B1F9 DA858048 0D30EBA6 24B1695F AA00212D 0B01DDAD B088EFEF
B2A55593 64277D03 9CE68D3F D0A70DD9 6C44D872 0F394550 4AA81EFB A81B6E24
A3D0D344 073EA93F AABB29A5 FD9500E6 430078E3 4B12A048 3D10935F 2A0E33F7
C63D10BB B9D196C8 27A11B69 2F55A290 22DD4508 23176D8A 4650AD0A 507E4108
F6323AA1 0004FCAE 8681C119 A800BCB9 C429749F 90EA8D75 2B9164FE F48B5BD1
E4B2A757 49081ADB FBCBB616 B8DBFF00 DB04A0C0 FBEDA600 BB7636D3 FCCF4B0C
8A7E625E FBCEDBF9 2F3D5FCA D71BC34C F51683FF 008596A2 3C6E32BF C0D9F95F
AA6F3A8B FC0BCDE0 68FAAD02 9BD53AD9 D3A6EE78 27D32FF7 979A08E9 36FF00E7
89F09446 CDE336A4 3CA3DCE3 BE7FB0DC 97512633 14B5229B 40E2A509 E0916A10
DC136007 B34D0899 5304B1D8 0046AEA7 69CC1411 6EBB8A2D 2D3EC2A5 EE2F79A9
6C26C262 B61261F3 683B91E0 F4A41A70 0D3D3431 B75580C5 A908C00D 203F0460
3EE84BC0 3ACAE5D7 E97D00CF 5D5D78F8 03EC44DC B25737E5 2B047323 A75B03E1
40ED4FEA 30CBBAF9 A7C58C50 85E6F0C4 1DEC0879 CE73859A 6F1901FB 16DBFF00
A6F8B611 986FB01D 9D9ABF44 40E5D4AC E8F855CC 40F5DBD1 773510BB BDBF6C08
D0FEDFAF 0073FB7F 8E00EDFF 00FD0A30 B7FF00E7 08D0FEDF AF0073FB 7F8E00ED
FF00FD0A B0ABD83C 94E2B2A0 032B2058 E6100450 00410005 10045000 41000510
842089B0 04A0C835 5A00E5D5 A555C530 C5FF0075 88982E6D 6AE4CB4D C3C2040D
D46673C1 6DF1550B BC17D532 E8D0069E 4B941693 CA083584 50A40483 2D9191BA
109A0498 674D1040 3F5C809F A97B5863 0C5C9B6D B354D509 3CC0DCB7 9EBD8FBE
9A15A891 E0A5E49F BA8DD0B8 B1555C17 45996229 547B5B27 CD345DA6 0439964A
108F0540 B83D4185 347CE4A2 0416DC00 745C0330 451322BE 04BCD2C9 652202AF
658A401C FEC4404A 00411D07 71F64100 D64A131C 8210FF00 A4193072 99E12D92
FA47E0A6 2FDCD67A 1C9EE55A 93DD4120 DD17B4C9 B83952AB AF453713 693A0E17
852B743F 2502C155 C0C40D61 10A41C16 87EE5071 1131A52C FF003C75 DEA19165
D4023613 A9AD537C 3763B695 02BF2CAB 45D8B0A7 57FF0009 0CF3DDCA A61D6E04
57657713 A4C9731E E554A4D6 10866502 433D01AD 1AB82512 5403235B D7D4D63D
46D7B63B F0348976 73A6EDD6 8D62DB92 B71B30EA 9887FA81 448F2E0A 34AA00D8
AA685200 D213004A 1004F0AC 8A0A2A59 DE2E4CFB 5247257A 0703C79A E2E49ED0
A7710511 43679295 BF64B269 2DEC13CF 53F94B16 27F49270 548A6E42 039200A2
AF359123 A9B921B3 E7928565 F16EBF45 58184635 5D54B30B 812531FF 00C25C53
6223C9AD 55CB3A5E 0E6D1FFA 16CD8C9B 2D5678EE C8DA572C 2B56998F 32DAC603
0A2008A0 0082000A 50724308 A4064100 05100450 00410005 10045000 41004B00
49000510 04216C23 A204162E 9A004E59 39EEA9C5 0AD5F865 9960B2F1 060839BF
A6C745DF D510C2A5 1E157FB6 734800A3 4FE9496D 1110906D 72A65B68 88706F4C
4DD7D510 115DEAF7 CBA65D81 0AA2C3DA 72EDA6AD 6D104900 50E34910 272DCD5B
369210FB D6615097 2F466128 6D7301DF 4BC52008 2108A00A 01178430 57843CBC
6A206689 213470FE 828E231C 4FCA6D48 1949DA0C E6A20456 02010530 BB052045
084BC082 018FBE13 41C33460 D648388A EACD3292 33E15C7B 6AB26A6A 08D5CA40
D3D3A244 B4A80981 9608AD36 3141004B 803304E0 402D0B60 0DDD868B 917FA5F6
BCEBA3BE 7A454ACC 8E56B776 3EC87534 D8BC645F EA7B9DBE FCE941B0 9CAABDE9
B0269BEF FA02C25A 4CC2E375 CACDA111 F2B9E1FD EBB2E364 60E37ADA CA36BC78
FADA7715 3C7791CC BB4BD89B E8D4A798 10E3F9FF 00F19295 FC06B353 BF5B2E88
09650691 4A12490C 070A26DE 5A0732D6 1B277C51 2A752049 AF4B110F FB53F6C1
B39174DE 23D5F114 B52F8208 5F781F5A 279429E1 B2E32694 404708E7 AD00E692
00D66A20 2A0D200D 30D430E0 5D022009 2808F104 3832410D 917FAD27 CC9BF8DA
5725AAA5 03E16288 1EBAEB52 110D1084 20895000 41000510 04500041 00051004
50004100 05200D10 4B2D00AD 172D89A0 11888C41 00AD0069 E15B0298 72E45F13
91A54B01 05100450 00410005 401964FC 7F868B31 DF68A5BC AD02C254 7A187FBA
7345B013 AD7A7FB6 720519ED 044F5ACC 235D5B6B 60B691C4 39143251 FC1721D6
0A049200 26893CC1 0530675D 00CD3534 E059C470 D69F865E 0D60D653 091D271D
E7A5EB38 522F8FCA 599CB16B 7B280665 39388444 4709D04A 10045002 A000104A
401D4580 F8558B58 D2A07B1E B5163D56 42376FA6 002EBBA6 10765746 845E6F2A
3CD272CC EB5F6142 D4E95B02 73D61398 A800E692 C8D61390 043C430C 0739A8C2
9419D7F6 3FEEE559 9DE46619 82E0B226 19124E25 34A12B03 8EA6CA12 EDC78BBF
6E798211 0D203520 87E0CC73 5A34304A 78957B2F 74DA97FA D012B8DF 9BD6B4AE
C83479C5 6B5A5F94 00FBBD63 DD9AD765 0465E312 54BFBAA5 CAB1203B 8FA8347F
655B8542 60565C4F 7DF1C77D 45968218 5259EB3F 15938DD0 8C12A0B2 58BB9969
244D08DB 9A00E94D 00DB8A10 23821087 6A300D66 89A02653 1310E965 AD0D2009
C09A0BD0 DCB20049 0C2711D4 03F12F3E A804558B 0BB45A4F DA127549 867EE202
03B40B7D 5A619550 00D203A0 00D600D2 0041004B 00051004 50004148 837414C5
2AAA2D11 C394952B CEB52F7D D6562768 4A45EEB3 71262FD6 DEE81E85 BE62A564
C089CD17 E5289368 E8820B22 FEFD280B 8D864AB6 17908414 C4201858 00A2E26E
5C00E695 CA077CC5 53E24CE4 F532A8AC 1C17BA71 DA555C27 6C634FCA 9812B9AD
EA52224D C067A098 883BAD3B 011FA975 103C5A71 000A202A 0C410049 C024CB66
8A2667DA 0816C7E0 B2522198 47BF38BB B665AA09 717B6D27 7F007699 A88B8E14
95EF3605 4C73F641 00AD0412 0A603EAD 8960AD00 15D13052 85AA4037 A9CEBDEE
63F767DB C2C2C6B8 3443FF00 9B5425B4 B9B61050 008548DE 43081B6D 3B42D459
20914B3D 8256856C 0E35104B 0CD603A0 00250A6A 9202939F 7DB62EDB 83C69581
43C0A406 52004100 4B1036E6 22CA6C75 DA405200 41000510 04500094 01DC0273
CA26DFDD 975F81D8 40209B98 420A3486 104B004B 0C920089 533442F8 20A99113
F6A4FC16 01E95924 910448BD 5C856C58 6A108430 4100284A 26289680 AC6D366C
FDA7CE3C 713161BB 64410005 104B0D20 CEF6A400 F79D4EEF 5EE206F1 D0C92D0F
1939A48E 40B77758 6BAB510A 402FE882 9B6543C2 4739839F E85016A3 6D923563
121DC616 6EE4B671 95B9A246 7F118514 F659E5A6 53F23449 E6469F54 67DAE816
BE2F5F4A 50F95367 6DC55AB0 7E8A4127 0354B598 7F1FA52C 617022D9 C626A232
73A440E5 7B7B3981 5C064E68 89FF00CE 6E9A6F8A 7542BF00 207ABD31 17FB9D3A
41DF0B11 F776A755 B715CDD8 C6BD0FBA 6F38D252 2A4AB7BA E117C87B FF009545
4F118775 13429E05 22A51951 6EF8E8A2 2EAC54B9 54B3A646 500D5B79 82584A10
04004A10 2410834A 20A86062 1E450860 17D48450 F6DD7C39 5C55EE60 C477F5DB
9FA77534 A541963C B7DB179E 25401E7B E0599920 97452708 AC005666 1004E00A
600D401B 4F9ADB08 28EF5FD6 12DA923D 7EA19361 36C3FBA5 5FE74133 A52DF1E2
A33EB99B 52A88C30 C10520F8 69892174 62ED4B0D 2153AD18 2DF98285 F8DEB1BA
E31590BB 2218193D 105B2461 0990C436 5D874A60 516FC3AD FE5A1B56 A54D1604
90045000 E3E3D402 62891FA8 8818A5CA 2089000A 500A400A 2008D285 08FC95FC
06A383A3 75899C72 0C5C1420 2792C057 00410CD6 004108E4 284B2070 89D65CC5
0286B803 84C085CA 7AB09029 17A8CC28 D35B26C1 50861018 C46045C8 8200DC42
20D64A60 E68BE354 EACA1386 0CEA1F98 04500047 9066E959 7EBF34D3 B496C082
E3DE76EC 9CBB522C A7A0C50C 9538BCF8 EE187403 98B9CE7B 40978AB2 560596C8
4D4BBB92 26F166B1 F45B962A 8D7DAD91 76F4EB68 F2390A4F 9A1D49BA 9129DDE4
C9D3A56A B86F48F1 F6A6FB46 E327F3F3 ADBA09B9 C83CD365 4CC50781 4A7171D6
71515C2F 9AC57572 E84DA1FC C96459DA AA8A9EC5 2B8A22FC 79958063 0D40F7A5
1B885000 62836A40 E55D5401 9C4C514A 7791508A BA09B88E 5BEC2217 2D3B014B
00490CA6 C7D9A2A8 442C2E09 314A5998 423AA934 614A3486 103C6A96 1031D325
049371DB 0084B213 81AF5E6E 5D2F65DB C05323AC 61574B68 9654C5CA 54BE77BD
9580898C 8D5CB388 C8264A26 D60A24C8 4D085B24 D125302F 21F3B95B F20293D4
E43EDE75 F5F2A45F 863C2962 58B8B215 81BC57CA 7E23B05B CC020A70 051004D0
430C36C8 7CA88A28 8242EBB5 C6A68E5E 9B561972 5A56AC12 B197415D 08B87ED1
AE4F10C3 7C1A4210 7E1174A2 1052BBF6 F220C996 0A23E75B 6D0549C0 A500A440
4110D35B 34A1B1F2 A50720A2 0AA000A5 00920049 0C82101F D16809D1 51C9B93E
516E4DD8 98F2F2A4 0C18CD2D 81370490 0478A000 160A3617 C480C836 510A8C09
89ECB224 B8849D51 598852DD 05028CBA 81992A0E 630A406A 20E7419C E04BC07E
57927FDC E82CDBA2 012B4382 653CA000 8230CA81 FA42CC77 4108A440 82C30512
BF8F8A0B CED3625C 9561D23C 8ADED5DA A82D53A1 11C263AB E70AF4AD 00EF551D
E4779233 72850FAA 046AB493 E715CFD2 D5846D23 9359B8D1 A6A452D1 B223E2F3
BC4A122E A2B91816 128A8BB8 157485CD 56195C46 12378416 8440229A 105185B0
E88220D1 5B24B2BC 71BCA55C A91A1901 4B8D7121 545C461D 4218BA13 E0DC0231
430CE44D 1031551A 1A16A9E8 15A9134F EA2690BB 4500AC00 E6A608D6 03725100
2397C789 945C4532 CC257432 B2B1B8A8 6F71BB11 A91440B7 B2C9548D 5C265089
AF6520F1 AD18C00A 70A8C230 EB4B08A4 40A45B02 156DE2C7 B9C477DA 0B0DBBE2
72F3469C F9E9DB91 1AA91D2B E9688B9F 84425120 A004E286 10106A12 68A9101D
3A846772 E34D4C42 ADB4FE9F 8FDA3D5E D2215AAB 0ACAE2D4 0C7CA909 928CB9A5
5B342256 BA0464A3 55C0C8DA 250690C6 2B15FC16 CD4BA9C4 4057CADF 8BEEA4AB
53FB7FAA E30B5C07 A34174EE 5B539851 AC35863B 547FE3A6 8E585622 EA65D8C4
346E81AA 562A9ADA 05480A20 081004B0 84406A10 04500086 967BE135 DED3B2A0
098BB11F 73C175A9 1D405D22 41078210 A00D129B 0A1017C4 200822A6 1A912BCD
267F517D 81B76A5A 4CA65C09 E45B0978 6E094C4A 00A208A4 04915C12 11DC1741
1131ED5B 7A60AC93 76D6DCF9 A55F251B 34828105 1004D164 87FA82CC 19D00271
C8053024 0D00870A 60209608 CF2D1B22 97498554 B6BD7C9D 0BD34725 543A1360
B6166921 A3B829A4 329A2045 E80A901D B60362BD 6B097CC0 4508CE06 2501A000
C4451811 5136340F 138480A8 C1550A71 769C0419 F59CBA6E 43B25192 2D5B3452
D88F9A0B 986D3B42 494500FB 58023120 89D01330 45895CD8 CCF3A465 8B616D1F
E359F83B 01D76A31 CF45B763 106EFADA C1CA0642 F4FEA093 8588664D 2E6BC657
AF65190A 4EB391A7 699A6F1B 1B83A5BE 3A740980 D6328579 CC792FAA B9EB8890
25BEDE21 1E75A879 E0453374 ECE8429F 8BCAC24E 122AEFC0 577ACE85 85F5DE81
00BF4DDB 49284CF7 AD09A0FA 36020BFC DE89FB48 35AFBBD1 88E40BF7 4855DFC5
C2957865 C8E887CA E5D1A85C B5D996EF CEC3A0ED 81E65E42 56DC277F F1877D45
16AC4051 04842949 9EA99305 612E4D95 A76DE35C A05C8AFE 4DBF65E1 4C288CD9
13AD3B4E 26D04DCA 40D02771 A81D04EA 35F434DB 01B48BDA B4C72A43 E2EE487E
1895BF34 22FAA584 806C8220 92228C6A 9956F7B2 A8BAC8B8 BC5C854C 8D822085
3E9A208C 9FB60251 A56A2C52 D03506F1 6E054B62 5C95DA65 3E6BD0C6 AA8D2D62
D0DEB8A5 F96FB6EB 59E42619 E45B8105 1004E0DE 04D00A20 08A00082 3075D4DB
9D2FFBA4 6E9AA42E 633A8BE0 83EA7161 D49870C4 452141C0 B30512BA 04500012
0E5512C9 5C4C99AB 62DB857C DD43645C C92884BE E8171B52 0DB62074 DA662005
00876A68 75B78B35 BAA89D25 163663D7 754B575D A15085DC 97E5F5CB B61A640C
74C41604 50004110 4DE0B6AC 33F1DE84 70405F4A 20D78210 BB9608D9 9218E1AE
67421619 05376509 CCCDFEA6 9EA541A4 B805222D 52469406 72510284 9805306F
2D0472D3 3FC41625 30184A20 5881AA04 F310A735 1781DC5B 09685A05 0C0D301B
5C8468C6 AA913174 6589ACE8 BBA3658C 46885D63 2006BCDF AEB900CF A818B0A9
00338424 1FA83622 0C537510 D0CAF6DE F4AD8560 FF00661F 7F9EBF06 9B54C64E
3F6731D5 C18E2A77 2DE7C4EE DC24EAB2 59C75BB8 8FB2B4CD 1012B77A 4F41F59D
0A9B66AD F32BD40B 6D357F0D 71425856 C5A12C23 1B42F39D 0FAF65E9 9D08FDCE
8FDB826F CC60F776 5455DE89 708D3AD1 9ABF058B FB56F8BF 4BDB3AB0 09CD9F03
7CA88B37 231919D5 58900450 00945E94 9E040058 FF00BBA4 2E71CE2F F7677923
10BD6241 4B208648 4A3F5C34 0B6169A1 6C4E691A C465D488 6B681B01 DE6C1850
00C3478A 1111DA11 44E4CB55 6A2342A5 BA18E653 AD5BD80C D89A0AB1 C4906017
25306908 62A5CC19 7D61BE17 E625EAB9 5E26987C D4116824 D8ADDB47 EEE6889E
08A00077 A6046389 50004100 05100498 DEEAC070 2279D20C DB61CA3C FEA07E87
07E262DA 116FCAD7 3851986D 6F20E3DF 56CE4AD4 78B88ABB A1E99410 22AB7B17
A9651626 E93AA71B 5C1BA76D 4F9A41E8 B7B6E15D 8EC0DB16 6E5216B3 E06C29CD
EAB23909 B9F0BF25 2D6F0644 7D27F18B 5BA6A920 D139947F ADEA1F14 27713DBC
475317BA 069BF16F C48BBA6F 1E27CB6B 39345DB6 84DCD051 AE6C4100 051004D1
F6797C51 3E99B86B 08308424 67AA1068 89015D08 D99A881A 97D541DC 11415506
C5149580 1BD16622 2C4D21F3 51630041 CE30BF37 8424D64A 106B096C 0D203E0D
052038BE 049C1305 029D540C 135C02D0 4B00DCCB 3581FC72 22DA0312 B786FCC6
559AE85E 3556DF6D DA5524EE 729D6EE4 F8F4A902 629E2D79 AB4028A6 E925947B
62A29385 11B988AF E6BA4E36 31DE82DB 8E4E1626 57ABB8BF 5DE1DC39 AC74430A
1E79DA45 26A05288 46AC6525 0494189E 25205830 5A0026AE 7E46AE54 7716EF21
1D27AC0E D4D11625 C14A7137 A97E42D4 4B6C74A8 0AD04B0C 7A3757C1 B018B524
B9196713 E164093F D59E8526 42C4A715 07D25406 F4A5FCAD 50DCB0D7 93612B6F
4ACD1D2F 31815C54 8C8BFC3B 10AD4AC5 2CD7E909 684A0445 88F9BCD8 BB55103A
4E8DD38A A01AE5D9 1D5613C6 5B1832A1 C1D7AD2A EE44A2C2 05EE5D42 98C947AA
81F987B7 3D11E12D CDA08BC8 4B69FB62 D49200ED 59886836 A80B916B 895C4108
A590C1D0 02629467 4D8D28F9 98EB2C6D 17CBC7C5 755A24A5 B14C5EBE 0A0A0A70
76A80463 89500041 00051004 50004100 05400D5C EB1AAC4C A911AD2E 1B8BBC08
65710235 F6915E69 E8674066 9D45074B 4DB92008 D74811B5 A9713921 67CA6342
1B1BB7A0 AC4EE8A0 92008B41 0049001A 1F5448B3 5E3219A9 6128135F B003DA89
AB7557A3 681B3367 41BEB5C8 A4008230 6BBD183D A91FC044 2FAE0CD8 392D0822
6A3092C8 D4CB3520 A31A41FA 7451DB33 4465A44D B0196D04 85E83B11 234D8029
590C07A6 77102786 016609F0 3F609285 40CD4B85 50AC4D8D 142FA1C2 61412511
226D06B4 0B156642 445E65BA 1979AC64 9341CE20 6F6A4830 BCEEB2D4 00F54FF7
C4350D60 978274AC 4D08C80C B737E43C B2CB368B 5CA1C8CA D6294B25 203006B3
5396DEA4 9B910B53 E50D0AD4 09F7CA3A D708DBD0 5CBBE05D 387A4294 C636F1D2
26845F9A 102E4AE0 F785F64F A84F0BFF 0090867A F613588B DAC9E670 3496072B
52973B58 98D2EE51 D898A2F4 B740D53F B56CB8A2 6C45AFC8 290FC975 C5828A69
65B47769 5B6E8454 8E470EA3 6DE18D75 D2DA8AD1 5056ECD4 9C2CDE8A 014F9A33
C1E092CD 70E63A05 31174A30 37847092 6A408CA6 4094AB89 F0C403AA 00B6C3EA
B71D263D 3376CC51 C5683865 057451C3 6B01EB4F 48F4E6D9 9EC84BDC 6CB289A0
5F26B1AD CA600D13 86109288 D6027244 9FA64456 B61BF1D2 C5A0CE2C A9442CEA
2D2808A0 0082000A 2008A000 82000A20 0842C866 0853D61A 9FB6A825 028B0865
42292500 A0F7A0A7 10402D81 ECADADA9 D232A350 FF00A48D B697C615 BAC1574C
26946B0A 2650430C 82814900 2608C005 0200770A 80FAD244 69CFF222 5B5AD2A4
98FCDFAD FEC2D600 776255A6 3F4F3224 A1B9B824 7123227E 916A2950 260A8B36
F9DD4FAA 6F340BB0 18AD7A09 C2C38353 63026783 0A56B38B EFA5ADB9 A1A24A57
9A441E17 05401B65 26D28A2E 2B42E782 108600BD 5C00305A 00C10D10 7BBF4D00
060520CE 0A409DA8 048478D1 86205409 E84D0896 7F2A0E73 C3458833 5C03B119
45124B00 FDAB830A 00B3A000 F5335304 7519337F A2EE1514 AD2EF31E DA4D26BC
02BF457E 08B2F476 1159D599 AB6D9AC0 E8896122 BB29E2A2 D1430C9B E0AA74A5
3C8D22C6 86EA9A60 AC7EAFCB 4806DDBC 7ED4EBBB 9EEA4515 50859C12 591AF3D2
E2153194 9743C966 1A351581 8DD6CC6C B9292443 1A3D0CEA F5C6B279 265BA0B2
712290CB AB083141 08135C20 0B288AC2 415816B3 3534916E 350BB004 8545BE04
3147CA5C 16149A42 99A1CA54 8AE283AD B6858C46 79652087 83DA1984 4E42F056
47055E54 F6ACC6C5 E81E63CF 9DEAE5B4 A05C8DE6 11EBFE20 4909BC82 8FEAB391
19EBF0DD 51042389 904510C4 404A12BD 450D409A 098B5130 2353B95A 2FCB5A6E
BB030FE2 821CEA2E 2808A000 054A4F4A 402A6D34 CF439B08 F53BE3A3 15EC0848
9AE55B84 705CB0B4 2CD2B28D D085CBD3 33F2FC5C 27DFA602 121D80EF A3615210
B5CEF610 6E4B6FC9 0C862CE3 A57E1940 ACB22394 5004B004 917FF1BE FCBFB2D5
058D2D52 94686C95 71DAE6BB 101B9602 19518B5C 27942709 F419C54E 5802B16B
8A263510 8B6A20A1 0014C436 19D822C2 16A6A228 3E5EFA24 696C1F92 6D08570A
0E758946 73CC5163 01E997AA A5918DF4 737F5680 0E6D1B19 943B22B7 66B86EB8
5A476464 1B46B247 753855CE BCD27497 85B722C6 85955568 B2E32564 36F62299
24D28521 526622AD 4FCA8C42 4A138200 DE04A003 2A08F05A 02314100 4B0877A4
0015C434 586630F4 EDAA10D0 00024300 AD0A0106 0D206F0A 801FC440 0A400A50
41002A08 A2FDC554 C0B724CF 5DDB829B 7131403F DC676952 03A000A5 0067ED92
00AD0652 00D441B3 AAF61671 223B5FCA 930C3D68 CD226521 0998BA21 9470A409
C1A35588 E8095002 914530BF 252072A5 8660D6BA 82643759 20D9088B 98586E1B
42A424B1 4504B99A 49D3B541 22B46B7F EDF4FD4E A755548D 70DD9C96 770064E4
D4F6DEB0 6E03EADE 21CDC7DB 92723784 98C68CA7 45D421D5 355C3788 C50D1039
8480FCA4 0BA1813D 101C8B0A 342D0A70 A417C617 9E44E702 74424E3B AF7D1BD1
D009AC00 5000D52B 3D4A9BBF 3AA8AC55 93048ED2 478B0EF5 35E547BE CDFC8919
0E8A6E11 F5CE2E4B 6EC2F8CE 82F453E7 2D3CF2A5 34413281 EA97DC0B C29FC926
1B84B959 E96B2433 EEFF005D 7D54132A 83E7DEC5 4895155C 46947251 027241D0
912DD662 C5A8AE64 88A8FEBC 8536BDDC 96D06C48 3D524E5C 9F25BAD1 E2B4631B
2F1FC544 D0756059 08A500E4 4B0CE44D 4C520073 41C0A7D7 921098BA 64216EDB
C0F32C96 2108DA04 9E4D7D69 66135825 1008A91A 70A52431 EE4FAA30 E3EEFDF3
A37DC442 B62178B2 B5C01532 1516F8B5 9971DBE2 44401BC5 37158C60 4976A86E
8629CDE5 5F1940DB BE135000 D196084B 00496862 96083AA8 40E2AE00 E5280980
8210A608 86935102 72A406A2 C9C80510 F8A600D6 00F2A600 A4062389 50302194
4005EEF3 58A0C3CC 867E6679 DCC77D5A 819DA111 55000510 04B004A0 834A301B
8B178460 586A60DC D86B618B AE8428FE 79C5CF4C 39DE3ED6 71009025 128D816A
30868189 2E0A4051 06B18610 70BC0450 43506664 D25C8615 729DFD87 FCA47520
6CAE4C18 C9269A00 C03D1083 0A200958 0A70A044 E8166E74 6B9A2319 28366379
53BD1F32 356562FE C5D69129 45C8048D 0A50BE04 88AE6813 4A84AFA9 A6D2E85C
95574214 2F65AC98 C55A714D 76177DA8 8E4526A8 848A1053 0A6161AC 34AD7AAD
4232647C 44E2274E 75D3C404 ECA82D81 DA2E8D59 7EE43A66 36A93B44 4A74AD8A
80A5CA46 47ACD184 706618C0 DED410D5 3EC08BDA 314065F5 DD5FDA7B A24C8EB6
B311162E 095CDE2D 09C88F88 4CFDE2AE AE56491F BFCB655C 513EF7A2 5556DEA5
857454B1 60C8E16C CB6C6625 6935D6F2 5B475437 22BC820E DA56ACD4 9878223B
02A401D0 DEC426E8 490CFAD2 AE34FEA5 64596C2A 56097DD4 69EAFA08 2B734B57
9E657A17 B9577E99 500073C1 35109B0A 16ABD948 81410C1A 57B66C65 AB12232E
763E510D 8549004B 1066AD8E 5C7C1505 0E3265AD 6F613E5A 27A3C465 E220D036
AC122C0A 086E0861 08211858 005213A0 49004B08 A4008210 2A8A7017 8460E882
103704D0 DD04B004 6CA10610 D400534E 8539D29F 55647382 3CBBAB73 D2DED54F
1EAC1565 4B810510 04500041 00EE4D10 42C74503 43D216DC 264E60A9 7D323362
8A015E0A 509A0159 04B18281 F9674A60 5D0038A8 0009E21E 242022E9 5904D441
B53553C0 24A18460 D7A20863 0D201075 17784100 5B22B104 9004F0A5 1811F5C6
614C19DC F6B4272E 569DD5F7 10EA983D 917AC548 980411BC 8248465D 6CC33C1B
F9E35AE9 31A8AED8 31243884 FC7FD847 4208E808 6108A3D3 33A42002 EEB2ECDA
C5287F9D 67A77573 83EA02D5 4B6C8499 9A0B78EE 62798290 7F860B08 0D13389E
C440BDA8 00258204 64D39A08 EBE59218 316C80AA C49659CB 7AF49BB5 72274831
36DF065C E31485E3 0DB9E75F E2148528 EC231D84 BCC8C6DA 46ACA2C7 6AE3F903
AEB21749 DC86089D 2DF1D76B ECBEC555 6D4A43F3 157857EA D7A286B4 0598647C
277AC1BF 7544AC43 3A497573 926172EC 54469491 12542534 82F487F4 9C80EA88
25EE2532 7B1BD23F B455A26B 8D561E21 2E9B9F98 F16B0968 0D100478 18A90473
BCBD5CB3 C8EACE71 DA8609CE 45297FF6 DDDA5D12 2F59D44C D8B52722 88A66852
00410005 10A9009B F6972217 059E882D 684FF169 9B568465 E23A669B CA145204
900448AA 8189DC00 F25B0020 89500073 5720F1D6 417FE065 42D058DD A88E6FA5
A127C8EA 2740AA01 8F12966E 8479BA55 64C35C54 C5F8B1E4 F04045CE B285707F
B76F412D 8B1D7635 6B39E42B E81E3DB3 8BE35D4D 0F6D436F 67939C5B 92B17AAC
A25D4108 6AECF5FE C16D9C85 60051004 50004100 051004A0 4B10279D 235D3906
B64CC975 111916B6 02D125B2 E860095C DC20C00D 30A70D13 F3A10AB1 C4366933
A8BB0097 C7152650 848C6E7A 16296D06 73510464 96C0E4A2 089208E7 41004B4C
72E68610 4B08A504 554D3B6F A5ADE85E 3A226D46 087E9153 BD82CDBA 61B155F6
1E81CA69 C1E9251B EB49FF00 51A69A22 8CB03B77 DA930456 0041000A 2520DF6B
E9DE4B6D 238A327A A8F4DD58 FA922A70 E6516320 32653086 10FF00A4 00A40493
8610179E 0410A504 83625412 78002608 12BA01CC 35100392 88D43A81 BD5CB318
252EECF3 3B3B360A DA9E4D77 C2FA21CB 63BFB7C1 65AD6323 C8FBA238 BEB51A59
B204E29E 279773C3 4FA66CCA F60153EE 4EF8CE7A A92E7A71 CC6619B9 6A72535D
15498643 30FAA45E 25B0D8CD 265165C4 C2240697 EF1F0C4F BA251511 C3639E81
5C34D94C A4B203E0 1304788A AD921004 CD7A7FBA 1A35D188 EFBDA15D B7626110
AA8ADEF4 AE3E1B15 5F90B55A B6A19251 263BAC2D 57DA2591 D1036108 A0008200
0A400A20 08A00027 56970AB0 360509E0 B2F24658 163E55F9 41DB2820 2DA6F38E
BFD99B4F 5ACE64A4 F23E2F77 E759F80B 51686A0A 7EEF9525 6F82C2F2 AD5AEF7E
419B2240 2CA6E824 80D49DFC AFAB5BC4 BB70BD01 A71DCE98 15A3F4E0 F77C4DF9
5FCC7557 CAD8C275 1F4220EC F683F0DD 9CC53B6A B2413288 6B3952AF DF8DB9E6
A2D70949 D0FEF095 589D07FD B7F65ED5 499E2722 3EB132C9 1F1769FC B5197548
07D1A6D7 A95269C7 B17ADF6A 3597F3B3 8704B684 52210E57 A9DB79BD 4F99DA74
ED172FDF 96599B4E 2F640D8C 36E791E0 A2C4680D 100490A8 0082000A 2008A000
550AD0D5 D3B6690A 99AA38A8 3E33C1A2 04BA532F 6C07B286 1D9B2A98 D2CAEF27
479AC997 94C2A84C 080A809E C8E4A608 F8A91AE8 98DFA5CA 90905CA5 888589F3
EE1F8584 B880B223 48DC05D0 0A603500 6A10595C 00630891 04006A20 0D4077A6
E7ACA69E E645E4E6 DB220CA0 005B51B8 7353B9A9 24C2F756 AFA1BCBD 31CCB05A
F9A5D30B 37316A99 E1938A6F 2C8BF936 549EB4AD 23395302 F4DD7D42 8998242E
4A246F4A 309A003A 1804B004 C06A2055 51264646 7C4327CD C2C3261B 0B85A104
74516511 110A6037 4512B335 10330448 DC0075CB FF00F864 DA9AE625 33C72FBC
7BBF8DEA E925AC2B 730FF11E DA2D201A DA4083F1 8BD792C0 DD01BA18 8EB6286F
02A94385 AF65D6CD 90330512 BB922982 2E1868FD A400067F AA00AE86 019E26D2
ED494670 D2A95FD4 580A400A 2008A000 A5008210 86108C4A 2D10C739 A41E16EB
D5B3082A A375000C 6A20CA97 9E84002C BE5D967A 07112662 89B8039D 335FCAD9
14A90795 54819EA9 4E579599 76A6DE5A 8194E873 322E5998 B10422B7 F5696E61
E54C6549 7BA2427D 6FE99773 98A19F44 08BDF748 7DD58595 B9E4A1A9 A571712F
F2BF5326 6353B046 AB3B139C 2D7A4984 476517D0 73CE1A64 2C13A80D 5D86451D
E3944AB8 2DDAA9F4 36736CA7 F5BDA1AD 166CE335 4FCAC8D6 17AF72EE 62D836F1
F2DD5C47 47431B2D 6D607469 8F69F3F2 4C71BAEF ED9621CC AA40D202 E17177A4
60947796 524AE945 CB6333C4 C1C6750A 094A0341 0C9B9636 1772DDC8 2D30A77D
D44788E6 53BCB201 F55B1B50 EFE65913 8475F2A6 7563A7E7 A9E755F2 C882DAB4
74904D5D C0AD1BD5 097DD074 9AB9C266 3B42A30D 10AD094C AA101A96 18A52E45
7B51CA32 CC4388C2 7B8477F3 A42D1A64 2A07B2C8 18ED4F48 23896096 C8A40641
10D103E0 92C81304 9084348E 206B4B85 97BC819F 61F42DDB F436DADC 5EB09103
ADF6A578 B391CDBB D1F95178 5B626EEE B85ADA3F 847A5E8D C911A4C9 97990554
F4D22A26 C893E5B2 711AE9AD 61C6CED0 CE195CDF FE2D7B48 D026CA88 FAD6A1EC
4E1C9E3D 9E95ACC3 4AAD5CC7 466546A9 F53629D1 63B17A8E CF362DDA 1D7FE6B6
26C27D92 89C90580 C5770A34 8B416855 A92F82F7 A86BD862 7C36D35F D6FDC2B2
D5B2F0D6 AC1B43E3 B7F8D91B 95BC5980 AB191FA8 7C895448 0E6504F2 A644D80A
500A6055 C8F64100 CC5D009C E9F11B83 673CAF55 1CB36906 4600B60D 91115C25
20314520 35305A5B FF00F885 FF00DDFA 237A4C66 D4A8CC40 BD9EC470 4529F260
0988EFDE 852C8990 806E6840 8B5389E8 64DB3907 0A500A40 0A200861 08422FB1
91DEB489 C262AD34 1BA2CC11 07A2C6D5 6C976CA9 9840B7D8 85486EB8 10D3593B
C5AC11A6 72E34570 554EBD96 6DCB8A62 CBEA9645 062684DE 07CD4FEA DD283E3A
B8205A3B 232C6D06 A555DF8D DC0458AD 177C554E 7567A0A5 8D7DE0CE D588748A
F8ED1685 75C59E62 E8794076 9C10586B A93FA234 095E171B 528ADF4F C7775143
7B41B46D 4E34B30C FF00AE5E 2EDB39CB B9A4D8DA 5F33B1F7 77A8AC6C 60CDDC29
1BE75701 802AACFF 00BA6A32 93759C6D D7A9FACE B9D719AF 2E76F4FF 0047A888
1920D121 FD7FE796 FE2C6DD9 7032261B 13C37D6C 3AE142B9 8E7A4F0A 25222D43
90F6D64A DBB97F63 17E2DEEF 4B9081AC 33088211 DD8FF52C FD56BD97 8AF2FEF3
2832CFE3 6E8A8BC9 ECBA0779 A9C92FA7 7B519825 4DDC479D 757137B2 61CA476E
9BF6B958 9A372473 0E0B3B7B BF988BAF 5B165F48 54BCE5D6 36DE9189 DEDFAAE6
12EFE61C A9E2806E 57B33AD3 EC970247 EA8A325A 411CBA20 AFA6A460 B2F02654
98645AD1 741B4629 524E647A 9D031B03 59F3DB95 2F186264 9285A07F 732441DA
12E43E33 3234B3E6 A7AEF649 664AB2A8 5E466929 0B01F9AC 8A2089C0 701B0A06
A5082108 B1AD8990 042C08F1 A9406397 CFB937BE 55D4D549 5879EFF3 42DD0D5F
51CE2F4F B3A50284 48F7D297 59617AB0 440C6540 B9EBC1DF CC0AF19F C6FBACDB
C1C3D6B1 D9453AEE 19BE673A BF94A0FF 00BC559C CFA36D55 96AE661D 3A0A1CCC
39F70C54 A61DC4DA 2E87244B 21AFCF6A 9BBE3262 153D43FD 6BC4BBFB 5DF7A382
2DEB5A3D 18DBEA44 B144D987 9F4526AB 7A0FC04E 16398FB2 BC5E33D2 A2398529
A696ADF4 A9C39CF7 0E22DBA4 8157D1EC 895432B8 4D5391C4 DA210F41 2EC98682
999997D2 FEB5101B 6AADC0E6 537C651A 622BEAB2 88280C6C ADCC10A3 05100D0D
12671F04 90F8A660 B1869141 8D58236C EAE30FCC 796D240F 98F9A7DE E8C13AE1
95A564BC 75266581 1FC94508 890A80D8 8500912E 08A3BA57 9020F20A FA62E6CE
CC5784C0 6E8A504A 84494CD2 12C8AA20 85EB558A 06F26218 C1D8B760 1E04E041
0834C440 0A200842 95956433 5CB20022 FE3A0660 F8D6420C 56055000 41107D87
F7F42FDA CF6CD1B6 8C5C5D6D 0C555D52 3FEA6B67 51DA802F 4C919521 4B23C222
6506F341 48F490F5 8B3CA811 848906E3 B3654B4B 1907B23F 40B97DA8 6FE83C14
63E55CEF 87EA973C 998578B0 2ACB1543 7313BAE0 4875999C 9CB3C1CD CB4A7BB2
3F7E6DDB 39CBBB7A 7B898EF7 A8E35F99 C01B7E11 F74F2E49 67E0688C 9E958141
EE64E2DA B90FBA98 4BE711AF A96E2CF5 5AA422E9 4E691748 7BD87456 6A9C19D3
947262AD A1AEED92 AB8B9BFF 00F88584 F1FE1F2D 4850FF00 51A4120D EFDC81BD
6E2E4355 4F4A6C25 0FE85841 30DE35E2 BF183D1D A66BB085 4D1FD37F 8D47769D
EF6BF509 450BA5E1 460B7B5A B23A23DE DBBAF751 1692181A 411A839E C5DCC5EC
5C38F91E CA0D78B2 A144F8D0 84296B1A 175EB53E 6D6B4AEA C5E0F753 EDC6F13C
04115D21 D2002009 F0402D0B 21D2BC7C 1DAA9701 D070DCC7 DBB3271A A91DE25D
518C66C4 5B89B890 2D3B104B 003A5A00 638A400A 406B6E8E 2CF5DF3D E5F90B48
6978F52B B844292C 0F6B6D81 535CA3E7 CC1CEA25 A38C18B7 45E84C21 DDC2205B
D8E326CA 5691EDAE C5F1ACBB 419760F6 DDC0D55B 77D9CA94 711AEAC1 C5A7C957
1041F969 CB3F43E6 7C88574D 142D135E EF59CE5A EED19EB7 5ADE2632 6F5719A7
7A5199A8 E29E0F9F 618A5919 9935D5C8 D441117B C46E9A35 8B1EB169 C2D2CF89
BB66CA7B 8D663B6C 39F3BF5B 218FC4EC C2E2B157 976AB41B 1D966160 5421CCB9
D761BB82 1E9F5766 1BC56A1F B24054BD 58D837D5 50E1237E 3761D3F4 430194A6
B9E92AC4 7434E648 75C9CCBC B65C0612 B70513DB 92089B4A 409C2D4A 44B9A604
FCEB4D3E 5B81BFDC D5410BEE 544A3779 752BDDF1 B97A5AA7 479E8A61 55DA0082
30246C13 A22E0BB9 0B78B486 9C35A138 A29F420B 15B5C564 DB6AA90B D1DC3F11
C539FA27 B458BA99 2183A160 638990A8 403383AA 10EB0620 D908016E 690CB5EF
A14C1404 D0EFEC5B 3289BEF6 B6439564 F7F07EEF D3FC1ED5 014C77D1 CCBAB890
DAE7AF7D A4D96C04 A2A891A8 26210861 08F111AD 9643807B 27FBBB60 1B1856A1
8D080AB0 A547A47F B0CB1E54 445E4670 B6C11F97 81D87820 CB7291F5 15C9FCB5
68FA35CE 29BC845B 98599869 CD84C097 ADFD0CB7 7564D1BA B92502F8 4EE3C5F9
E283EA9D 05C4FD9D 6903B668 4793C0D1 B3E0C46E 9B3D2372 4960CFB6 BD2AFE30
EBE93CD2 4E03E374 E65D3443 4ED866D8 56E4CD7D 53A67764 257502BB F59BD574
0469DE5E 0BF3D984 B8C59F7C ED2991FB 90DDA0D7 B2304928 4EC70DFF 00DB5531
85CEB457 FF00E12D 454CECF1 01BEF58F 7FF45AC0 25420A18 88186061 48333095
222EDF35 C82413A5 54D10598 DA7A506B 3DCF7C0E 57533113 E97ED327 79A5DFED
8F3101FA A0F414C5 CBCBCC9C EA58D174 C4D4B326 43ED46ED B82DAA47 9F05A367
98D54175 51CC7481 105ACCB3 E8DE5C12 70A440A2 0D32B265 F6ED18D5 49321A4B
6733BA0A 86F0DD1A 00AC46B8 0400AF0D 13770502 2018F8C4 7EA819A1 0DC78C83
5C17BC24 B0B29580 49E1A200 92084900 AC366108 A1BC2C8B EFE1B24D 2CACAE7C
55711ABB B65EAE67 B5F5FEE0 EB5D4B1A 3765BB89 A13A6B99 7369BEEE D3B238AE
7E72D2A8 0543AF88 17104C88 5A6BFF00 A76BD842 43C82A85 DFEE5B0A 71474ADC
2CD75456 03A3B21B EF49B60D B34273E6 4E5C3625 73D8C842 B8A1C316 FA3473CD
4897F959 9749656A 411DD3FA FEF27777 DDE57B34 CBAEA068 B1A59BEC 161E28E0
A7A028C2 05F8DFA2 F753EBFE 0FA8FD1E 64FF00E0 68A86D66 60F688B5 66E8FF00
DED651C9 6F11981A 9DC23F97 29E870A2 B2A343BB E8C9E0DA 7120AB70 27EAAAF8
D2B8B534 7F4A9FE7 38DB0019 78773A95 9EE1B1DB 8D99593A 1C39DB30 1BBC960F
6C718AEA A3C89CA9 F5C65B98 F76D7573 2BB9623C 643AE64D B790F049 F57BA5FF
00E7F91B 1606B589 F37E0A9A 6F27B0F0 2154CFC2 922F88E9 70915C46 4CA1D82D
ADA531FD 5B411ADE 42833AC8 66E227B6 ADA5A1D0 0A2008A0 000D3D85 7651D814
B1B0EF5D 0721A8C5 B04D5C47 F20866D9 1799C8BA 82A50441 00AD26B1 45507635
A95D231C 662F8A4E 9B44283F C3267A9D 31AC8594 E0B2E225 903BCD4D 49A4E12A
2CB1F2FE 3D166E9A B449C098 4772BE11 CFB22B81 B85937A2 84A5335B 7DA99EC4
2AA01D00 A2EE1E54 0096A586 7B374FC4 F0A75C5D A830E7F0 B0840DE7 2F05B2E2
163FA0EF 70DFED25 8EE7225B 7E11F917 0EDC2482 7B742BF4 16A59218 78534B6F
D82B85AD A34A3032 59393A25 0BA16B15 1FA93E99 6029D237 01A30940 1DB8593E
DFA7FF00 3E5DAE16 B67FA39A 4502A8D4 CBA1EEA3 B0A61A7C BCC55907 9CCE56A2
75623838 5E7B5E85 16BD384E 333A6A38 6678BC9E 0D4FFA44 AE723D6A 8D67F1AB
B623B071 B6BFF85A 6058546A 94977901 BDA4F3BB A8543AE6 3DEFD322 FF00671B
9344794A F515D451 D178C5FF 008AF359 42016288 C6D875AD 38030A60 842E81C4
7A2AA020 7253D6B1 D5CDDFE7 5FA6E8DC D89BCA5C EC3239DF 24F88B83 8A936F14
9717E1F9 D62F1EF4 441594A0 1183BB99 C83DE6F6 EC8BAAFC 896C4AEA 6331FC53
ECCCB881 2E3B01CD D6410CE8 8A3437E8 5003335F 80F787B2 AAC84B73 9834510D
653CF0A4 8619BB96 88130408 A0000751 02A41961 9E3507E2 3CE636BF 5D38596C
A5F8E15B 986152E1 5D22E15B 327143A0 4C664434 9CBA5E36 1BF1AD2A F53E7ACE
8DCEA2F4 6E0F196E E8148D18 EEEDED9E 2555BD11 BED587B7 221EEEA9 69335B59
FC7B647F FA04BE1B 9B9A960F BE61B127 F38DF7A4 9C999CC1 22D73A34 5D09AB2E
85B15A46 064B6353 D89256B0 C283DF2E FEF8ED6B 5B1D1D82 C54C2D2F 7B1F30DF
1EC52F74 132DDDFF 007C9CEA 3D6B04D9 92916928 9F612D50 FF00694C E755DC64
99433A26 EFD8F669 FD9DB625 D8AE4C4C 1AD772CD 787B1F55 44ADC9B4 19E21D25
26C4A305 14D82E42 3F69ADF1 0EDDDBFB 1054D822 483D7131 0A51BA2D 62FC36F5
770F5A46 C860AA2E 89C51C1F 18DD7A52 F93492FC 0EB2A339 5E62A5C1 400FDBFB
D18AB88B A85D06D4 9005938A 20A00BA0 0005840A 70DA4C98 1D9E270A 114A76BF
DCD40291 049004B0 045000A3 638D8630 E62D3ECC 14C55522 22632EDF 92FA0866
5A179190 453037C4 00053087 6A102143 2F4A15C0 BB07B285 245E6C73 12CE77F7
707051FA 2B6D5C27 5173D6B3 6B7ED1B6 F6561A7A 1B2BF222 CF9B5C17 33C9B95A
6640BA95 C8571321 7C2540AA 5FB32163 B7857698 7B02FCA6 8B4D1792 C1CC070C
7BB56251 8EED650D 3B4A4B2B 6B48C074 E5C6BE94 99790D58 51C16C46 FDB6DA93
B8A1E2B5 41DB8A21 5ABEA01D 55913505 2FF2229D A2C865A8 1BC57CB2 971A89EB
8693E159 7DA15CCD D6C9BDE3 642E2B9A 21D412DE C56D0207 4108A5B7 C0B67C6E
377C99CF BE4D3C26 A7332A59 1409633C EFFEA6CE 1B7D4096 C77915B2 2C93E1D9
5476A3C7 3CC91163 4019DEBA 206B2D4B C8BC973F 067E8A81 A68C8A49 78411D62
7992765E 9C1DB76F CACD5BD2 D0FF0048 292C1D32 984A6656 C1CEC5A8 9158D8D3
631F53B0 B1973AFC C5C12DB5 8039B30B D3A5A9C2 5B919CF7 AC38D9E8 0A66678A
C75CE86D F2DB72F3 584396F4 D464F14F 42B4B4C6 91FDDB95 E7567C29 D3E3BC23
C148C1E9 DE9599A5 7E527777 D2BE71F3 4E75D2A6 FD46A859 A3221951 ACC8806B
5DC89B10 DFDD269C A14F02B2 5B864853 D3D40311 FF00A759 B4242E66 B8F7796E
2EAB97D8 CA55A65D 01521350 02C16108 E2A5954B 781985EC 06B697A6 3A18C577
11421517 058D1CDA 363AD918 F18D3B7F A6DF0A8C EB2CDD4A AA6F8A34 F73BFDEF
A7356F8C E2726FA5 F7313D6F 3C7278F4 7BF86BA6 D1951371 168DE08D 0CAF45BF
920BB2B6 61F58658 85067565 B0D5A06A EAA86FBC 729D0859 071DCF9B FAE4B01A
7DD1D8DC E0FE96BF B34FD382 91F38843 565DD2E3 F48F8FF8 EEF75BDE 95EE3636
B1C46679 344539FE B5E3CCA7 3518DA72 1AF99A0C 15696F13 3DB1FB6C 2A07339A
B1B171F7 1F1F192D ABD04E53 929179F8 032CD361 5AC686E6 AD64226B 55CFBE30
C97B1419 F817FF00 F1F4B532 DAC6B65C ACFA2D1B 93949621 36A674D7 6DF3AB13
B5148657 2DA53185 3C4BF6C3 2531F28A 8A03D184 38B85DE2 EF7DA72F F77044FA
A3F69919 32638455 78C32DB8 1BB19171 61B593E4 599DA068 8A5A2D5B 81490C82
000A2008 A0008210 82108600 0A2008D2 9EFC2B06 5B59540A 71722E5E A11B782C
6089EA34 02D2E849 0D9004D0 A506430D 68A68FC7 A2FC42FC 2D42EACE A2AE471E
3EEE8916 5A794703 7CDC3C1F B504ED60 49AF032B 7B563F37 12B80FEA 88DAD0EF
9CD9A6FD BB2FF8ED 14E55584 E935C29A CA80C26D 32D1045C 0A340D1F 25304C49
88235FB9 E6409ED5 4B42A5C2 9E7BE7D6 DB376D7A 6661E29F 595898D0 4F0C73CF
4B8560FE 6289D0F2 D400DD4D 1025D593 E6B5324E DA3EB549 BA986F92 DE78F103
DA430980 39661A0A 0BEB5684 584100EF F06DBB8A 26D23AA3 92550B70 B7623F3A
BF78FED2 A7B4D6F0 14A6B8BD 6D56950A BE9EBE14 B311EB17 6ED71E9E CD65241B
D3BAC298 594E263B 2344B765 74D4785E A69CE345 8606A67D 25D4376F 83E26687
7F36C0B6 A313AEEC 966744FD 8D27B5BD 84ED073F 0E5E797B 2DABD051 D1D0FC70
BE22AE10 66BE4BBD EA145F51 D99BC439 9BBA502C D74AA710 94D3E0E9 68D98B90
E6F3FEAA 476F93E5 6ED36F2A 8FB5B7F6 5F2B7D44 22478285 59639E69 BD896E36
2C6E09EB 228651C2 02737574 7FD8DCF2 22D6D711 ECAEA5B8 AE23A744 FB57B669
DAE46853 423A2A92 7D90CC95 5B1B292E 73467C8C A3A77DC4 92E57353 C8E2A846
65603436 9FD030C2 36E8B213 514ABF8D DA360B01 398D5588 01181452 B76BA013
ED5B28A3 AB91594D 12452542 3D4B3D33 BC4FEA95 6D110A69 1D648351 CC6E8D21
A80842E8 D34D48F4 3B203B91 E04F5F51 C71A2661 CBA8F22E CFAA5D62 0C1A627A
DF5CEA58 04563697 07B72E5B 452E4052 CD5FA65B 06019422 D76DAA91 5A56EB17
7CAF5E4E F75BB52D F99DA386 BC1ABAA0 DFEBFDC6 D46B574E 7ADA751B 64EC9901
9FB5F6C4 67DAAC42 45F0CCF7 C2385B22 E478D4AB BF55FBDC 7F7D68CA 91D988E6
CE1561EE 868F3F45 46B7E84F 0D2A36CE C0B9F024 B2351662 BF19B7D0 4B983645
1F146059 7AEC1D76 D158D1B0 8EF6E859 EC37290D 6656DDFF 007C3D65 1BA3696C
4AF1AE79 9E95C1CC F7DDC5E9 4D21C8B6 86CF9FB8 115CA667 CEB6822E 2B93740D
14192EB0 FF003BA5 9F92EF2B F40D6555 F5A230A0 FCC4E9BF EED09ADD BB75C292
63449668 BA7A1416 5E2A842D 84E77F5A B625A052 EC633363 4E759388 8FC7B2D3
9FCDFB8B F475EAAD 776348D4 B0FC909E ADE73953 CC2D84A4 E8E3DBBA 35F4471E
8E33C119 4BD85B70 4300B967 1F049004 90045000 D2004100 4910D3FA 315AC46B
20DF5F16 C416F68A 3E784A8E 3926AEC5 44A75316 8C1D6152 DC0468EE 6A30D403
E25C8278 5466FF00 E9FCF80C 75272D99 ED4B4A62 28B957B2 F67FA68E A134266C
9BF29ED5 217F1525 1DC1CAF2 B81C9F75 D1DB3DEC 5340E95D 7C3633A4 9B686308
01A00A71 5302C303 5A16F077 FD90E413 A88A8660 66298BCD B2A75EA9 55AC1235
43215084 0A605D00 894A2005 61E178D6 1239A5D4 5EC4DABD 2DAA235E 614CE702
B5F3292E CDD6F62E 5C573F37 CE252311 8BBE3506 1B23A128 94054D29 C4F0C118
F8A49E3A F59DB93D 9AAC0433 16E24E6E 63FA2521 65D3419F D84119C1 F6E478DA
E328A28C 7EF4F753 9358F883 DEC54ED8 68568B6B 2F8C3CEB 672E3AB4 00BCD560
B4507131 9CF1997B 1074A63D 7934A345 DEBA5221 EFEEE677 765EFCDB 829CD14C
EFB11DDD 402D2FB8 23D6E14D 82DDC1C5 CB6A592D BD950493 9E08F4C5 1DCEDBDD
D00179A5 E9C21170 B3FB5941 928EA418 B9769B53 8B99FF00 9883EABA B1B1F0F1
AFF6ADE6 9754FF00 65B2D0C8 C4D5F405 B6BA2AC8 DDF348A1 7E9A359F C472E3D5
22155C97 7E815E25 A73584E0 F9544854 D1B7F320 1BFDE645 66BE6F26 B0F85374
9CD2975B 1EBC9ADC 829907AD BC9703A8 F1FB15E4 426C3232 C7D1D8AD 3B173188
36D01452 B8D023D4 64F7E2E3 318FF90D 75D482C5 6D82A8AF 9D47BF9F 26EF409E
E96A0AB9 81733791 5EDC4714 8516D616 C2FF0047 17348A2A 943B766A C2F1F739
C535FADC 0BB8BF64 B289808F BA046537 6B5BA892 211CA3F7 475D832A 48BBCB85
2A2CDF3E 953D7A27 C0D56ABB 64F27984 30567101 C60A402F 9E089747 6242B56B
CC83CE54 547C1B0A 7CBC9D8A A5C78B2E 54EF9EFF 00A04F92 BC99E1D9 626AD8F9
E2D1E55D 76785EB9 D1F71ADA 016B231F 0B1EEB25 B3556195 6BC9BDAC E2F3383A
4531361A 9F667BB3 A751CA1D 2993EC5F 9A8A7DC5 1F2D1940 85BD2FE9 4DCCDCB4
04A10DF9 2EE4EF5D 6068DC4A E946E32E 2B7613F5 156DCE4B CC42DE3F FF0017A7
2D8DA652 56C9E5FF 004A7C2C 6313A96D B3D1B132 576420FA 5A661751 FEF91197
36BA0782 98DA43D2 4B22826F 0D2156A8 C068B348 F8E3E949 2033263D 6196DC5D
FEFC3247 F41EA5DC 35A24C7D 7D0B9E6D EDC6F954 A53D0E54 CE3713B5 DDBE3199
280FA78C CDD227B7 9345234E 9BFB7A8E 6B6F8D26 C39CD3D4 D6816452 42197A2F
34919780 45E527DD B2049B7E EF921F00 5D46BFD3 EBE7CCF9 8F7FDB94 62566938
3757EC63 5A76A29C 50DCB1DD 22D312D6 4AD87FCC 4D9BEE58 3723B347 8B4D5166
9FC7EC5F 772B9166 F6E084F9 173F95C2 2451CC9E 4FBBBAF6 FB715ED5 11A991E4
8A107572 A60D20DE 9D2FA900 82100FFF 00EAA4D5 002DEBBF DBB280C0 DC5CE612
A3476A40 B837A247 A6E84522 F57BBC35 CE092174 C79400A8 E58C96A1 250BA157
4BD16F55 C49E9A2A 1BBA4A3E BF25D33A 58A4AA82 2D60F688 5EBCAA17 18A555D7
C0AE3B20 F15F9E5F CAED7C92 BBA93FCC DCA07E81 CD05309A 0825000A 44A85002
13CAB5D6 CEB8ADBB A6CF52A9 594C2255 9F75ED09 280831F6 A706820A 803BC426
F2220800 8D7A0612 9BB9920B 7F9EA9AD 49A082D7 28459365 FA749D51 26576855
DEA9BC8D B09D6941 83C11ACA D34858CE 8D5FE6B3 EF55E12C 14CE8DFD 53630EDF
3CB5156E 1847FEC4 2631E69D F86EF4A4 4F19EDD4 A3B989F0 19CD2759 21A53106
1D2CAC6D 91BEB19F D6DFB280 F3F74949 B6AE7C7F 85EA3B44 469E29F2 AD1AE834
4835958B 20190DDD FDCA11DE F56AA219 C17AF3D7 33B4D8DD A35DC0B9 F434E373
F7F020D8 B8A522D5 D565B089 E5E11B07 D40152B1 17CA776D B3F1EE03 CA4EC899
7CEB1963 99F7229C 8CFF0069 F6DF1EC5 534F0D3E 89DF5B6C 46854B05 46AF7565
B13E534A 5BA3D692 1370DBA7 23A34AE2 3BF66FD8 D3282FBE 3FD23755 581D58A8
AF51885B D5CDE6D3 BE847419 851D247C D3BA2412 6D72F46F 2BF3A12E 291309BE
B890D6A5 9D52FF00 69BA39EF DC96A160 196A57AF 56A9A5B5 50F59AEA 68C4E833
C56BABEB 6DE6CF1B 2F643785 80DC686C C265E2BA 33630126 03618BAB 88D70221
08225384 64457912 EAC75B9E D5197AEE 7916429B 7CBCD183 0C801194 93C35D18
D21412A8 0482A500 633D01BB 8681FEA2 594C4BF2 2CBC2763 D4F8336D BB0A5D54
66577C7F B9E888D7 A8E6648F B15E1715 9CCE58F1 DD29A5CC 47B6DF7A B996A3A1
AEDDD1AF 43B6F5A5 B889CF8E F76D10BD 8F9A094B 33CECDB2 CEF78BCD 35917A26
A51DCB78 6E22E764 4F6FCAAD 23A2E5B5 0BAB07B8 FEC44A64 1FFA9D29 479E0DF8
34252291 8C07F8CF 85AD5F73 52A96342 D798F1C8 3F91CFAA E64345F5 21342672
38B6973E EEC9C70A 1D6326CE 26B0B1B4 99C43FAE 54FBE8F5 DD3FC5AC 4AFB49C5
7A55C60D 43079FC0 C3EB137B 7A514DD8 ABB16B7E CCCDDF8B 5C94FC42 14F8638E
FB0F7AAC 92794BB4 261998D1 4CE925C7 FB870F4B 1D051175 A6189E04 EE147757
D149B5FD FA561AE0 139BD9D6 6AB86DB5 DF347EF6 0EF82BA0 54A1626E 8074D1BB
F2A467B0 41EE53F6 62D2CE44 84B33D5E 0B9BC627 7BAD49AB 4CB9E316 707ADA36
936F1349 B8A35648 01D8BD10 531CA329 666489C6 65606465 FAF29997 618755C5
7556F348 ED99B88A 62FCF2F6 7ED51182 8ECAE258 DCA9F3E7 597E55C5 C85C6934
662B8DA0 79A5555A 7EB36773 5B477421 1DAA66C1 AD756FC7 BCBF0C9D C1753A90
37A10CC7 AD77D94A 97AEE346 EF55AA8D 3D698E1C 4A06E313 3FA8005D BBF1BB51
CCA833B6 17479139 45124B00 05303AFE 4F4A83D1 D04BACD4 FABCC9E0 59BC052D
66E8F962 9CC4FA18 5B85E755 5D781DD1 41ECE5EF 36439BA6 E094DBA4 490183D4
02EFA393 05D1F653 3E09812E 08A00483 470A2018 307B59E6 F45B4536 07334B89
7F6635B5 7DD7A043 2EE45FAC 4CB4C84D 0836D600 D20033F6 C15D0A31 069A8B80
326A30C3 AA77813A 83827532 2D18CD26 BDABFF00 9AC7F0EE 7322AB1E A85ECD77
72946D12 6B6EF3B2 DFFB1ECF BE2BD987 8C2D23E2 7421A3E6 D5CAF39D DAD89C40
22B861F3 8CF5A424 1353B774 3BF7A3F3 5FF27DAD 88BB604C 6179A4DA 3FC75B1A
54BC8AE8 E37D7628 AC340677 5C3683B6 27985393 486B1D9C F1CDE6B6 B78EE368
F435AD6A 6E04CE95 78A756ED 4E1D7A89 0E616C74 BC65091D 9A9643A3 A67AD959
FCC71795 450D25D7 C0FF00DE F2DEB299 2200A218 2FA0A860 475A0DBD 0F4E9D48
2CA7FAA4 AD346669 3A26F2DA 6BFF0081 5EB6E94A 93E87731 193216BD E8595EC1
6FE29EBA DCA78343 D668A3B6 515C2B75 44D842D2 1D9F44B6 5D8A880E 78BDEA8D
5C205673 3D2DD506 E5C1C102 A0A241A7 88DACA62 BE8CF39D A41DA144 5D5B3963
8A71FE47 CACE36AC 56876885 4FDFA1D4 0A60C9DE 5AD2A893 B857BF0A 37E90875
C906B6D4 466D698E 3DC193EF A0373AAC EAAC6FE7 9EB55A27 9961F31D 6FE0E4A6
4456A67D 155CE101 CF5D7D24 D9BC74F3 61CE7DB7 829BA065 C25459A5 8C29F412
089E2D4B 07B635E4 14BBB231 12AC8220 DC5A198B 56BDFD5A 571D5AD7 ECA841EA
F49A966E EC55E50A E85B5985 27CE5485 27CE45F4 A46E3371 66E34B0D 74346492
403E363E CC5FFAA4 58E6569A DDE45A4F B2DD72EE CF69F182 9EEFDCA6 79922BC5
5AD83105 03F12BAC F7CD5356 6957B115 EFEBF3BB CF241861 DABDDE61 0C179E35
2691C1FE 6261F49F B6F6FDBF 2C6A0C75 972E5E35 B176F5BB 8EB652B3 6176FEF1
A654E678 C1259D99 79E67AB7 802D8068 6F96670A D3A2768D 63745396 B6E32A66
8BA9F429 23EB16F3 A50D6EC8 97E8687D C4282CB0 BF66E176 F92F4CED FBE2046A
194B9641 C70342E8 922BF0D1 9A22161B 4DFF00A6 524A13F8 FBB2AA1E 86A80DEA
34655190 01CF3F84 7E2F52C1 A0116302 C4933FFB 506A960B 5A6BDF86 219838A7
16B64DEF 22E37F53 9A4D5998 E16E94EF 55C16754 9AC81464 4C9876B2 572C5529
37AB2E60 CB8D7233 C6BE7CDD EAA7EE7C D2D6A005 7C6B8BCC 155AC67C 81CAA171
92761751 18632362 9FEEA88B AE87EAAD B7B13416 7913DE60 318C54DD A94D44A3
C15C4686 F3111598 E87941D8 EC288BC0 84EE625C 4A893EC8 A0CE1C3D 7FEA471D
58CCF433 A230D1BD A7755AAC E8BB3277 D40C3D3D 77E74D22 3E2169DA 1A746039
6F49EC4F 7C5E453E 1AC91E1A DC661B93 D48FCEAD 4F64BAA4 D9335630 66BE7478
D40F5DED 5DDF6EED D4E6B5BD 34C93D43 93F6EBE6 B81581A8 41748F38 64D5E283
8173F245 2DA01DA8 8D3C8A93 7C52222A 96BDABB2 7438C857 CAA1E05A BBBE3C99
010617E8 A21E4AD4 6B644278 5317938C AE08A400 CEB65C33 6108A000 D6009461
B0E00782 1174D509 44B82075 56817921 EC59F6B8 52EAA53F 7F488680 8FEAB508
EBD513D0 ADA24843 2E093CC1 5508670A 341304B0 A800D46A 4B88E0A5 19217A5A
067073C7 7BA9579C 29601392 4F9EE55C A0C91D63 54BAF431 CD0AFF00 845856E1
FD92EAB9 A99A3BE5 3D4CA9C7 CB9303F9 6F7C419F A86E5315 DEF60692 AB933AE6
03E09661 37A5E8D8 5319FD01 3F06EF0F EFF1DA43 9CA214B3 7C7FA14B 2592234F
3554D2FB 1972375C B1A16245 2962D86F E7556027 A1193FDC B249983D B644A0F7
7051DB63 25E23C72 AD322F5E 7C8B5367 C28A47FA 1BE5420F F94F177F 5837538C
278B2F71 CA46BFE1 2AEBF977 0FEA390A AE5C37C9 7A932EB2 F3E21527 F967E4D0
1765F835 A28878C4 F5DDF23E D587F548 7DF00FD9 C33011A0 406CD79E 9C4F9FB6
34E558E8 5D603605 0560648A 37A7381D A60E4735 D29E327F D434221A BC8F2E1E
5AFB682D E3C7599E EF5D4616 0DAD0F6D 496B63B0 C3FF00BE 1FFF00C7 3D150B9F
C4DF24FE DE73426F 8E501726 9953F749 DAC56263 82C5ED1E CF8997A7 AE7A74BA
D1C8B9B9 B748B9DF 12A47BC6 7DE68C1A 1F549588 6B191F85 CD54BC80 C03D18DC
B6A4C3CC AB17632E 3D4C7142 F3DC317D 2A779173 67EB445C 70328FD3 BEACC997
D5F8E315 8EF4366A 9FCE0FE4 EFC5BCCF 53E7CCEA 45D8B9B2 733BD6AC 11EBC5E0
8DEA5905 FDC9E6BA D6D2AE54 2B02EBD5 36553791 FCED13F5 C4ABF49F 3685B793
118C545E 7BDDAD34 B76DE7DC 090A24BF 3D7AAC5D B4DDF12C 863423DD 5C5E9C7F
78A74F92 456E0DCE 5A255EB5 B836F13D 6BB20AAE 646899D7 9BC79917 E9ED5F12
2686788D EE67FF00 BC729E45 14D22FEF 7EA7D75E 9A210D3C 39EFD36C 5F3CFF00
D037E430 447170C6 09DBC048 F4674E1C C1F96C03 B6810BE9 6AE8997A 5BD97B8D
5EAD2D73 ECBE6DAB 2AB86ACA 28B58CAD 05987F3A 5977A027 43C4E86D FDCE2E94
F0AC73D9 386DA807 235E021B 57D734D2 58EF404F BA8F741B 5D9EFE7E AD623D89
FCF45A16 8E37B321 BC99F029 B186AE7C AF551254 85628B68 EDE3BB17 24245EEE
06F4AA5B 3D976302 AFE6FF00 A04D9D86 957B0BB4 871CCB39 F6BF4378 27F7DEB2
B5564C92 DF922F19 BCCDACEB 7D428BE1 55F9E1FA EF5159A4 196AB429 18891B40
81FA538C 3EC667AC 001BF69E 750D2B6C 83EA3732 C9E246D7 3ED8CBA0 4F8E1CD1
43599CE3 2D5681C7 476CB694 35CEE060 C6F06FB6 4CF3DDCA 4EFA3133 9AFDE5D4
C8A479F6 BFA86F03 175E18FD 14A56005 DAD8DC84 E655D2E7 679F7988 5C23EE47
D6E1BF17 E6E7079C 5BD86067 9B0C1C7A BBA6F536 EEE0B232 E8A07E2A 9EA9C767
1BE8E3C6 55D17342 6D13DF59 027C0AAA 883427E9 28BBC7FC 2C4B7399 983E8C4E
DD9612FF 0055D8AA D3BE6117 4593A139 1235DA00 95649D7B F33CAF6D 06239677
DF965CC0 28CA090A 26057076 E5128905 0093410C D54B10F9 579A5C00 DF7DCCB6
6AD961AC 1B49D1EE 62FD72CC B2BA1E04 C6B5D5B4 F08099F4 A43E4941 68C63C37
B118AD8B D73920F5 790F8A0B 888BAA02 966A135B 0481816A 02AD8600 BDC42048
00704148 94D10491 E1723901 54A17DE7 E0A37931 D988E9D9 BA0DC297 BD94008F
23F0ACBD F45B2219 3AE19B8A 95DF9DBC F86F9A22 EA74631B 41CF5B8B A8F585AB
E755A5B8 89C67788 96494A82 4D8501B1 59F1D994 C58C49A6 824038BC B1A8CF6A
09DB0ADD 231FEDFE 9C598F17 08B3A0ED 099E844D 30168CEA 390A4D5B 5669A208
B2EDB5D6 9F082EA9 919B4AFC 7E9D12F3 97E7A55C 8923B7BC 1677660F F787175F
8A17AB1B 594B034B 0AE76CB9 682D8322 A8A3042D 792C4717 F7BA41CC 6CBDFABC
AF0DC598 9601580A 66623AFF 00F1FB54 514BE0AB F5903A7A E2BC03F4 EAA69148
C8924FDB 7B6C6F76 DD43DA2F FA562A01 AEC522D5 1F507F6F 66194BD7 CE262875
3FE9E6E2 66C19F59 79A293B4 F5AD3DD7 F9BCCAEB EAEA50B7 72B277C1 E9686B69
0C57A5AD 78E9717C AC26419E 7CDD73A8 0DDC2F67 B738C55D 32AC379C 218A2E9B
C4DCD412 6323DFB6 1D3C74DD 9B5D78E8 68CEBC6E 0415E76F E3A5CD8E 03CE2E23
C52CB1EF 953FA8EC 079BB954 DC26DCE7 FC418BBC F0390F7A 0A86D54B E8F52B4C
0D9CCB36 EE94EF53 E0404B98 44BCF9D2 EB94F3AB A6805E52 6A2293DE 2A8B085C
823EBD5B 15847EF6 12B69220 CD2A2BFF 0040899F D4B6477F 73654669 F79D2907
1F9FF0EF 9C2E3B6F 92A656CE BB71E2C6 C4175E60 8FBB6D09 660F1929 6DDF1E9E
9EA585CD 5BF68369 F2623EFF 00EAA240 C5B8B3C7 6BBFBCD4 91495385 F35E0ACF
B624C899 F7B7F8A6 5EC9E216 27B58046 9B9B017C 6C97CDF7 08A77D43 360D3A4A
9BAB68EC 3D7FF733 107B729A EA8FE2D5 A01B8C42 DA6F6A69 18448D96 341C01ED
07E7158E 92E4C56A 792B23F6 EA28DCBF 49A019C8 A27BA63E 8F7B8352 B279C3D1
9ACB73F3 2667DF4D FB77BEB5 4255D3D4 BBDC25B3 E53179DA ECD9C858 73A3C90A
619FF7D9 1242B699 DA4B86CB 8A634BDF FC569A44 997371EE DEC96E4B DB286F12
9042F9BE 87F5EE7D 50C5752F C9298AF4 5EC80606 75F9CC46 305EDE04 E01E78BC
A5084CAC A956225C 9C5C3AF1 E65B1342 7E228109 FAA64F96 D1417CDE EA3B2659
CDF76CB2 C96E86ED 4BF6232D 33E5C55D 4A46359B F6DD26DB 879E311D E819A2AF
25819B6E 89D8BED9 C4B94D2F EFCE87AA 813EA162 6B2D7CCF C45BC984 A81B7DAA
1FC42969 AA58DE2D 827C3555 31A5269D 95B987EB F5CBB73D 9B25196C 87EC8EBC
8ADA6BDE 2C10AF4D 33697693 25464180 59807C53 32225C03 A006B196 009B4F0A
E0ACCB35 12241F84 7033883E CDCF1045 EA6FD1E8 E77F4596 FB7771B0 E558A3C3
BB499436 3A9F9EDB AD6A5AE7 0553263B 8575A67D F14B6E26 6298175C 0421D6B1
07A249AD E02692CB 8D3ADDF1 83DE55E4 DD6499D4 53C21FAF 65E94C67 C2529EA6
7C9D1926 EC4E1615 1660AD04 F2B28414 A960F2A6 00A524E1 5004C1EB DB977EC5
97F72CC9 751B687A BC314646 9A5C5700 BB9AC0D5 4F80C3CD 1D16C86A 12823026
7DAC8BD8 F377C817 5CB680C5 9E28AB52 D74373AF 3BB48D78 0B33D44B 6F2B9AE6
808EB6D3 C8C62E57 80441DBA E8E833D5 1559EC5B FE212CC4 D4A960D6 0295265F
519952D6 F3DF3005 2FB5DF45 FD673962 645BBD43 654C7C1C 51C915A9 64C7C1FA
9918BC65 691B9ABA FF00C2B6 32204481 1504580A 14043221 BE6EEBF7 ACAB11FD
F484A119 E28C19D7 504637D3 CCDE2CB7 DCFD0C59 1A1D4BE4 F45C7321 FDF5D605
67D2064E E892EB78 E3D64EE4 A0056674 0471D22A CAB9112D FCBFDD63 5D8B9FE7
A5EDE87C D4D2A89C F82E9EE4 156E2446 FA10186B 7B1E9EE5 C53AAC17 AD5CBF51
5C2D7ABF 22DBA4A7 044F9696 31577443 0CDAD0EA DC546FE8 B14147E0 48AB29E6
2D4E6F6E 2912D01D 52FF0024 BDED33A8 8143F52F 65544CA8 D0147133 F656EFEC
A274DC11 831CDE95 DC2F8029 AD2F91FF 005D8BAF 15916AB1 39CB15FC 11A854E0
D84DA11D 607C539A 9E239EFF 00CBB8F2 F6BEDFFD DA533244 8CC657B7 B8E448A3
F7474FBA 0BBCBE53 597FAF69 613DFF00 074F43F2 472DE24C F6E16C9D 23D65C33
B639542F 10CF94BE 9E351B32 F60B0DA7 38A5D215 7263A6C0 B0AD57FF 009D73C7
FB8736ED B87160A3 2F9F56C5 02DAD091 A4817DFE A407385F 53792CE4 3CEB5D4E
C6E77311 2F50DEEF A775B27F EC9633A2 95C4CB7B EDEEA619 889513B4 888CDEA5
A12DCDAD 847FC72D 0FB3F0A5 4DAE1BF3 BD91369D 6101F1E4 4B10D577 947FF7A3
EC573A30 D9AC5C8A 2685FBED EF5F9735 AA4E3763 B48509E2 A208969A 103A5106
C25AF4A4 7D892AD0 A4D5ABF5 9E55D4B7 0E3698C3 FBACBB21 1B2B0DE9 AB1D7B14
5A278B0A 296CE9C7 BB9332F3 1C2DCBAE 0B7FCCD6 9A25343F DE4FEA3F CAC80B9A
010E6363 D35820C2 547F08E3 494147A3 C3B3FE21 968BF88F 37DE04EC 6A1909CD
776A7519 D0DE2C9D 859C3347 551A90E1 D61686AF 6D0A5EB9 26D79FF1 0D45995A
CCAC352A DF5A2DC0 59FC4111 4DDB6A86 75713B2A F7BA70DB 1036DB7B 0F6FF84A
0C668749 886CC429 6D738BC1 E37A07AB D94E7BA6 B96007BA DEAD69AD 80EC2FBA
444C621C 0C1A006D 14D4105D 9FB8DFAE 1F9F840B 7DAB05E3 15A95AC4 C2052FE6
F6BD7FFD 22A775F4 4392CE15 66D1A2AD E33A53B8 4C9418A7 528D63FA 200BA729
94D92A4A 800CBA01 466E1829 478A428C 6DC287BF 44C1A7A8 DE3C5D8E DC3133DA
F2F358BE 2A47A853 3AF6A44E 8D28CEF4 2F4D2394 B210D0BF E9593451 F5E84F85
70FE2A1C 26D9EFBA D04B5445 EF2F6B3A 786E92C1 38D1DE39 EDDB265C 859C5A07
D15EA9E2 50DE71E4 286F7E56 4DED4416 37F9A506 C5D5611D E6E396BD ACE15979
4B443FA1 0D9EE7C1 AD3A2133 F9655C45 76279AAE A37E3CAD D0FBAFBD 981EBAA7
F0593A31 C4CBE85D EDDD78D9 66F41D78 2D884D5E A2C99FD4 921A03D6 86EC8EB5
49A7AE74 870CBFAB E892F049 1BA65131 26DFED3C 2D6A115E 33055EC2 50BAD1B8
AD37FF00 BC338F65 6656BAB9 F6E3213A DF262F5B 0298C7FC 4B9E50BB DE6E3A26
C2347AFF 007C3BE0 CF26DA49 9667BDDE 95992A16 849C5813 78F65A00 C8BA82CF
9DB8E9D9 B6366BA7 441BB7F2 79E07035 0C9A9849 11FCEDD5 97B44E7C 8FA9A82D
2BE2CA9F 15C9A1CB 3ABC71B2 A8A6C411 F852699C 37ADAB5D 3444B568 525C069D
52F943CA E1F4C6EE 51FD788F E4ACB520 47EA3824 BDCDF0CE FD923ADD C2767F76
9FA87E9A B4897EC9 B469F31F DFB5D631 3BCEB9F9 5C2D0ABC 1AC3B62D 4A28B218
FF00219F F3CD0A11 990A764F DA42D633 777B6D3B 93C4F401 2FD20EF5 DB8EB279
01AF1142 61A9C217 3C6ED5F7 CA7CDF1F A52D3A8C D583996F AF490FF8 CB52157C
DC85AADB 986E53D2 5B8595E7 0726F3DE DFADAD31 B8A561A8 A178783E B97FAD96
85BDCBF7 0CE7E959 1A76D362 BF96C3BA 88AD72F1 2C4D3710 A7FD2519 35361E2E
EFBE6FBA 6488DBF6 2708EFCE DEFF0046 1D36253D 4829D1CB F24F8AF4 4938C9CB
B8ACE789 DAC09D85 A14419C3 897A37B4 98C0ECAC 9DC6221F 8F6D3193 CD88E276
3FF1323D 51136533 B26508B4 F64C9A25 01637361 F6B9F916 75DCAC57 948D1BD0
FB7FFF00 FEA94ED9 E77CC2AA 61A317C5 62B5E84A 2025109D 6A20D786 10B30530
961899BA 73EE19B2 6BA8E262 E7FD13D3 5C6732E5 58B864CC 12D7A20A AC08CE1E
EBF65A86 85CECEAC 6F32A9FC 3925214D 1878CF4B 4AA675D2 849039E2 4F8856BA
F1D25B42 E8F4ABD3 86543D7F D8DD6130 D3EF9FEF 1571442A 6E7C3542 1B4C3332
477A3121 6A39376F 885E8B83 4CE884FF 004717D4 886C1FC6 FE670D96 69F9B3F3
62BA065E 7FA47524 D3F2E4A1 579B50FD DFB63DA4 8CE321D8 D9ABF81E 9A338D9E
4BB655F3 DBC6C211 57D3AA66 14FC8F3A 4CF3AD3B D7A9BD22 DCF31F3F 25599823
7D88B200 12752C5D 8898B9BF 5B4A0454 C8FB3604 D144658A 70A42FD1 64141632
E1597101 EE38A834 A192085E 9A101704 C06CA355 00EE4D08 712D0978 0E36705A
4332495D CEE77C17 2FDF6C9E E55BA0C9 1F53125B CB87A72F B29404D0 875F8152
9E2F7D32 1A16857B 51ACAF7D 336AD4B8 9423DECA 9B4443CB D7B426A9 B891788A
AEBFE8BD F759D7B6 0D3A786B 5E2AC9A1 D55F4DE5 A7046EF3 FE36A8BE 8D56BBD7
B376FDEA 74457C89 59DE4D65 A62454C6 C02E5BC2 7BC1A650 268D9893 9A01ED38
430D7143 DEE5B2F8 4FB2EB75 8F90FAE4 390DEE7A E34877AD 04387F19 DFFCFEF7
D8215A0A A409B5C5 97F58E3F FF009AF6 2D6AB85E 7FB47A1A 36CE768F 038DEA3A
D7687AE1 8D0A56BA 9630D9DA 84B086C3 6A70EAB3 A83832A5 C163A06D 4641357F
242E326C EF17145A EA54E6EF E475D83C 705133B2 091D3F94 99316D78 1AC16998
3A9E844E 409E4F6A 60D76F3A 41B302C1 CBCBD792 5CB12450 B985CF8B 74DA1033
F155ABAD 944F1EB6 541A1D50 8CE87767 6EFCA73F A2BC893F 7AE216FF 00766984
C7CC9F13 F89F86A7 552D5A17 3D18C979 93BFFB77 1B8EB63A AEBE0A9F B080AC5F
BCA2E660 C7CB2AC4 635489AA 126EA421 917354A9 AE2A9FD5 D88A961A 2375967D
164F88F2 8DCD97C4 FA1845A6 E5D675F9 5FD7AAC2 E23535F4 B9DE1192 3E7A5360
27882F34 85F36AAD 8439B344 FF00B5FF 0010DA91 4BDCAC8C 6E33DA1F 63DA1772
F1BB1075 ADE8D5B4 5E2B226D 7A9D015B B8DF46F9 AC78E108 3A1A7912 3BA82EB2
54FF0035 70FC12EF BF35155E D8B85E2B 734315AB 8DCCAC70 8987E58D 5A1B3882
BE7113B5 EBBCF1DD CC9366E5 597CA398 C676DCAC 05D794E6 222F5BB1 44D9F3CB
CB037AA1 5C9A3AA3 D752F5D9 63BE87FF 00E921CF FAB59244 3B039CD3 78EEC997
46F7BC63 51AA36F2 8DAEACFF 00B2F82C 696E7BF2 BCC17715 D6FCDCFE ED2AF049
B9812562 CCFF003B A5291502 9FE5967C F3E2D3A2 C48C5E57 C36265F3 34943223
A3261186 2084AFF8 A63473DA CCC69914 A81E8999 96B68918 5F22D104 90A86052
00521350 30B2948A 1C31D6DD 8C4FEA8A 0D67F209 CC4D62B5 D96AE35D 5D647982
2DA2E0E9 89DA6082 391842D7 FB68CA86 0B4EC3B7 69DA3316 74FE227C 17C42072
7A2678DB 79D9608F EFAF675F 51F99263 B272209B CC46247A 3656A7A8 1B54D9D4
58BED22E 10D82DC7 CCF75952 F0E77E97 3675BB9D 60FD33C7 891CEA5A 1A3902B4
F93B9588 7FC708E0 825380E6 E78C29DD 94FF00F1 211FEF8E 4F0A38F1 F789BDD8
66069695 9FB7C3BC 984007E8 DFFF00A0 003ADA8F 58FA2E61 69BA6FB7 528EDBAD
0A4C5CDE C4B065CE C728F0A6 6CB528B2 CEDA007B C1B300B3 B6E20671 E84D4847
FB477569 66A2A934 E0861074 20080147 0A70670A 60670A60 47AA101C 6B0D40A8
4F80DA9A BDB0BAE3 C9DAD591 2F8C863E ACDEC675 0B865200 D4C0BD91 37D9D95C
612472A9 BF33F678 4EE4BC15 CE0D6C91 56F9FE25 9444245A 6A963718 2D95A671
1196BC76 FF00C279 A85EC9C8 8CEF5B98 6112E359 8446B07B 835C8695 82350512
A70D225A BE0EC651 5B432592 5CF1530B EE47A1E7 0A1DF8A2 3EEE4FDC D6A49B1D
A4FB27B5 B90275C7 F137BFE9 59EB7E95 D05B7C19 58EF103D DFF9EF5B 15547F85
EE74BC2F 8CB30510 96D7D299 AD3C4736 8FF04F8A 421BF369 45C5ADE7 136D7510
6D3D073B 540D6F4A 14A5AFF6 4F1B83BE 6C743685 BFD4D4DE EE19D5E7 FE75ACC1
1F8F0783 DAB8B571 3A4D3A33 AD1B6CD3 F7A4A28E 98077FE4 58FF005E 69D3A6E2
971F8DFA F7476967 5D075414 C55ED652 73A5FA89 B747510D 5732DADB B98C7B4F
D3BA803A A9A983BF 9CCB6C6F 51D8A7D9 20CBAF61 47DE3327 D76AFE5E 48A72D3A
749BD9A2 66E55AF7 DFBAF379 F1BC7671 F4A7AB59 C2A8BAD3 C25569E1 8EF3A0A8
53A79135 19217D95 9B269283 3C75C28E 67130712 B89899B3 67CAE56C B761189F
37E52876 A7363C35 24E1F81B E368091D 93AA9B84 0D1DF229 50D7FF00 08CA48BC
7133BBA5 E7BE5832 177A2629 620D0890 6E7BF7DD DA213319 5AF7276B 675AFC1D
5444C406 A8AD27DF 39D43F6E BE72DCEF 51B5791F B3C1DEDE EEE637CF 76FF00D1
DA6773BD 244B83FC 53E36466 3ABE25CB E7D40B2F 16E523B2 294B4D47 934A2D82
6ECBDCE4 D76417CD 3501FD49 FF005F9E 49F3F9F2 169F79BF DA3FA01D 4586EB37
23EE3CF3 AE36329E B56CFA17 3F093CB7 42F1BB59 27F9DD53 9BCA6623 B73CC3CB
E08DF13E 45C15CF2 53AB674F 7A3622A3 262108C0 0D203A05 33A64CCF 5B3C1531
36945027 09A471A8 19608210 874A0550 0A40563E A817211B A92FCD4C 8D6CB6AA
A2608A1A 42C0786E C47557A2 881D0149 DAE63097 0A3674D1 9280079F 97E4D96D
D86894F0 D0CE966A 23342FC9 6FAA8E86 C47FF366 147BFEE1 92D3C8FE 26896CCD
7F5C3789 0919A80A 43C2B132 F3DD2E4B 183D9131 843403FC A41B2285 F7B7BF7F
BF38EEA8 665AB6BB F8136B4D 89CDE8F3 E6A6C19B 948D592A D599A99B 97EE16CC
76A455F8 AC03B286 1A90C1D6 122C5DC5 B0FA007B 88A07EF4 898A299E BC89A6A6
21B5BD5C 16276097 362DF903 4CD49633 E859F565 E25C8DE2 25F4AB5D F82B8665
C2FE14CD 65C5C824 E641CA20 E8494CE2 879A20C3 5DC0E54B 08B64386 A32EDA62
0CFADF3A B6F195F3 A23D8DC4 16DF9BA6 3A9AA6F7 5509CE37 77E25289 8B81519E
5495C028 8A160461 D22EDD95 AC244332 78D63793 9129AA45 1816B203 E0928082
00BDCD35 0007EFF5 9C6DC9C6 434765A1 50C96B8C EFB6B419 8D1FB582 3AE545B5
E1912D3F 697BFD5F A6DD1023 8EA3A64F 3BA8BA04 42A1D488 FF007985 F7FEA9A7
C046AD45 E2F98BB0 B0E058A7 5572261E B2C15FDE 686D3C7A 7972EFA3 5DAB7FE8
4CEE766C FEA6BDC1 07F3A42A DC204098 9BA72D42 78EC560C E7D95076 B669B4D6
03987C7F 422E9BFA D69CF117 586864E6 13AD792B 8E655C93 42BF0695 1AC19A1E
B6862C15 D8B83591 CF351C7B 59E326F0 7E95BBCE 86D8D8E1 5EAD3DBC FDD9DB10
EF59DCF6 2BE89654 C5F855E6 98E9B77D BA168D43 B1C3EDB7 F2A5791A 217F1563
7BC790AD FB148593 2732B2BF 824143BC 15D36C9F 175E72D2 E959D8A2 D5C49A3C
9AF4955D BD3579CE 0D17A6FB 8F5F9625 56A467B2 621103DB 5017D3E4 14BF5CD4
98B2843A 8ACFBA2B D9B5A12C 44865D6D 5762B47B B6E65149 1ECC7682 F874B16B
6FDE54D1 5128F826 A46D6E2E 13DF7D5E 059D828B 337F0CAC C8258E86 98A9F23B
8CA716F8 ACD39AD2 A0861B92 874F4BC8 FF00BC36 FF00E86F 1A7024D5 63D6AFD8
ABDF8C16 8EF3A07D 792452D1 9073D936 35BDFF00 C235FF00 144A4B14 E684D87D
5B55FF00 55908141 2A01C58A 7E754D5F AA0269F2 F99DD3B6 695BE7D5 2237EC5A
B887B00C 8EB2CC93 7F9118AD 18D09F9A 08C93581 C9DA03D1 39844627 6C39D8EA
F3A18A9C 4C64C5AD 47AA8DF8 7E60BB32 1585BB49 ADED44B3 9503B655 42032FFB
A0759190 E3592A10 4B000560 6B99DEC5 5948D67A DDEA30B3 F070A809 6118E081
6F4A200F 8210DB96 084F1107 E1482391 02316BED 2C5BFB12 17563B76 D6528BA8
85781BFE 85B79474 069B989A 8E6C8DF6 48FEF4E4 2EDBA483 ECD6ACC8 C8288B5F
EAFB3415 5012B0EE 4B10E20E 26DC056F 9233EEC6 A9392347 3216AF65 2402E6FB
A41D1066 DC6F6BD3 964C8B61 78FEB5F6 A62A0DBF BB09B81B F3A07037 73CC7CE4
5B6254B8 B75C84A3 C75F489A CD287119 6ABF5D96 27299832 7BF53E83 51C1DD08
0BE23A78 885C768C 5E8B483F CB8EE874 E45025F8 924A904B FC5F51D9 2595679B
9C210893 A85FD450 702D18F0 94D5B70D 2354BB59 A353F422 200E6DEE 508A38B0
7DFE2D6F 8670E3EA ACFF009B D6BCFE15 CE01D0A3 4D8BBF0A 45DFD5A0 5C9653B1
99F3F82F DA518258 A85CBCD7 6EDA00D6 30A00082 10861041 05605ACA C775C299
99575437 88678201 CE2D1082 019B0A70 9A9A0B7C 254285EE E2C264BF 96A0F9E4
5DCA91AA 197A162E CF08F212 CF36EA2A 1DDBB69A 9DDDF0DD C4E3D9D0 A536D26E
CA20898C 6A18E232 9D221FCF 8AD28637 7DAD93C8 F7A7E37C 2DDA332A 233320DB
B8C7FDAE FB59159A 32089C38 8F5528A2 C03C3CD7 FDA47850 02616FC4 DF135C11
78A25E62 54B5719D 5CA512B1 09AADC1B 8B2172A7 9974B936 1A0378BC 3DBCAC7C
7F06C7D9 BAA047CE EE73265B 5AADDDF1 5379F65B 4744ECC2 9D182D3C C496F0AC
F54F5148 99B97FC8 44759B49 CDF42F72 0F12CEA2 C6E2B5EE 25CB4DA5 47BF517A
ACD985AF 5DE46722 5AB441EF BCA2F869 A45E7E74 516CC69B D19EBF3A 9B71B947
DB54D52A 30541DEF A2FA66A8 52489FD9 9F5AE704 449C2FC7 5BCBE568 8CA95220
47D3AB55 6118F596 8D2E9934 BDEEF73B 958D4978 1C036952 982B0A65 19640FC2
FDD44E5E 6AE346C8 8B0483BD FE35AC45 4EB4D607 7F61B8FB 8A0C6A2A 18C6E2DF
9B7C2D4B F2262DDC 6FB1F0A2 F38F9F79 39EFDC64 6E769337 376EC597 17C10A4E
FBDA4637 9B6902F5 73FACD4F 5FCAB265 CE37ECFA 247FA63F C850C1A8 1990C416
041126CA 06D39208 385A3031 43009B0A 54B44B62 E4D3B2A6 B7A144FC E7B22A32
826D0E41 00054019 8C1D2F7A 4185D0B8 D4841178 EA921D30 5485D7B6 294C2130
2584AF09 F1CF4300 E0490005 05DC8FA6 EB38D234 6254378B 88B4FF00 8F3FCF96
2DCD11CC C50EDDD2 A74F4F98 066DC5E7 BE2F53A4 0B3751CC 215CFF00 C28CDA45
0DEE3442 F9E20D13 BEC48054 2394837C 2D096CE9 EB4D8047 F3F74341 A5239FB2
2FDFAE60 3566DDDC 23848E00 0A903E93 8A266118 A0B8BB58 4A223D54 4E34F86C
2BF4898B 614B3CEF B8956552 693B8529 41086EB2 5D432108 A0008210 86000A20
08610831 41000510 04500041 004F9FA5 09A16D7C A83E1919 C66522E0 4B00D66A
104B0D12 ACA204E7 6519148B 250B5146 AB142F5F DA3EC411 A462DF5E C6954765
4079DA5B B1BBF79B 078D4FD3 A249CE25 995AF62E 9604DFCE 12FBDD2E 5B6F5A64
84DBD62E D7A3E4A1 F5F2DFEF B2B7A995 A11DC554 236E6365 E1CD5DB0 696C673A
66BAF642 096ACEF2 13A71DDC 36853BB9 3BAB5BAB 2E32F86F F0F6EF5B 2566A824
C5147B68 9FD7B234 26C85C7B 065DA03C 36BF5D82 B9A1BAA3 3CE0A6DC E656E5C5
D31C5C26 2769475C 1C84FF00 DBEF37F4 46839E9B 66B54DEB 796ED669 03FF003E
5DCC3C37 A32E6FB6 6E2FDA7C 795135A9 9849AE85 69812580 0FDBB668 256E9374
17A82964 2689C0AA 203101F3 3C654A23 F23B58FF 007575FC D7BCC467 0E646D0E
0D4B8D4A 919D2FF9 ECAB1A33 852B041C 68A15B63 E1F75DC6 CF866001 83387E6C
F40F1D27 19B027FF 00539419 1A6A9CCF 830EE294 AAA39248 79B2F0C5 D7A27492
917FA948 7BF322EF E35FD0C9 298AA3ED CD747FBE 194D93EE F5F85EEA 3622E65D
09C05136 614A2009 B04540C5 2E89B0A8 3621894C CDB8CF06 353B0655 B559E926
710AA57D 9D2F3A44 458BBEA5 0C665747 88A40082 000A500A B09CF75E 5C01D863
59BEEF5D 346A89A1 65AD49C4 9383533C A2C23924 73759EA8 7E17260B EF5B22F1
2D4A36B7 5510D130 72C81F05 0C56CDF9 8E8DBA6A 5B80C9DB BDE72FDB A5B741F5
3B39CCE8 9B7EB131 366431E8 B2990931 BD54A316 7D1F4F2A 31074027 3F240649
6CA7A85F 3AAA5344 D79A08DB 8E10377B A900E496 00490CC4 0D100478 32D62A3C
F2349059 33AD0BF6 496459CB 20512E9B 56B29959 FA5C9684 6D42A9F6 CFA725DA
9BC04B93 CA98C02D 3072555B 2F76ACDF 3D2DBB8A EC6E1933 6FA98D16 4B0D104B
2D100396 08E74100 05100450 0041004B 00490005 309A101A 4687EA97 0986669B
88413704 E00C4A30 BB251010 AD821008 5D8546D4 FCA54A20 4A13FA14 3439019D
D6FF00D8 741E5591 61188173 A4650BCE 94AD4A29 54C3C75B 63119907 B2AA60DF
B0AB458B 7B3E02FA 5A567537 721ABA61 5AB771DD 9B3E1D9B 9A554678 FC36F135
2B96C1CD 6C207E29 2A6B7A45 4188126D 7611886A 4C8CD3F7 6CABEAD6 A169C2B1
BCB68978 E345386D F9130DBA 2286369E 74131B37 9CDDFF00 106EEA0E 7640E1E6
F4140537 987E6C09 D9DD463E A6AFA765 F2D58881 0BD4B77B DC4C15E0 A8B29245
058D2C57 B0EB8448 16A375F2 731388FB A5047386 6A20D6DE C460DE2E 89C05C30
916B8A66 567EAFAE BE5A1B16 C07C81F3 03AA1791 73892AEA 621946AC 9FF5A5BA
B9C519A3 A8E2B3D8 EF5F2072 BFA4959E 8FE566E7 F7DD9AF1 53C87A99 89EE43C1
EE54B903 636E9B6A 46DC826D 9BCC98B6 13F8D1A2 4473BCD3 54056C3F 04E0917C
A4044100 CD3D0066 847CDC24 75917877 A746C674 0CEAAF45 CA9626E9 3EB585B0
A5F5CFD7 18DEA8EC FA2C23DD AD3F8504 C0CDC75D 4D2088FB AF4D003E 96A26F3A
8960B897 132D7923 106A63E4 0A5D0291 045000F4 D1CC198A 906C9283 CDD0B0D7
76069F6D 9B566820 8D6D2AAD 9BA5BCAE CAC283B6 63ED4FEB AA61C1A9 5AFA7F1B
355F9721 95A8875A BFCAD046 9E4B30E2 EBDE5523 E827BEFE 755AF406 B1D67329
ED5DE471 30276DDE 42D117C5 217A26C2 E3D7A480 75EA3E8E A2167827 B0817D73
F5C6579F 13D50D78 3B82DA4E 59DA3181 AC065200 4100DE78 4110C263 29BC7F54
71204EA5 34F9CBBD B6F28640 7C64D817 987315DE 00ABC255 D2EF9513 EFDC761F
8018622F 8B572E2B 5E5188F6 0374BC2D 4B28C229 0CF72ADA 56753723 7DA6CC19
8220B788 29B7D77A 7BA4A927 96687CF2 7FB1E159 9EEED854 3F546110 73F8A4C2
2046350B 5C8C0A50 4025008C 4A1323A2 98102B18 B848DE84 145EEA82 1044326D
D96CE1D4 00B4E08F A67351B8 244E5F56 CADB89CA 847B1DAF 263B6F24 5EE247B8
F7B11735 CE8D9B84 CB8EDB54 F432B0A0 66F8F1A7 E864D488 C78DFF00 CBA29F95
65917E72 7F9A2F1B 8515A3FF 00A7E865 235DCBA8 B6914444 718C2293 A52DB98B
0D8C5AED D3AE9BC6 50489E95 21559BC5 A9ED60BC 26D3536B 1B345CA3 8AC46D51
6C06829E 84A073A5 87896EE3 F07AA69E 7AA55C4C CCB7B288 EB4F66AB 4D2ED56C
54C209F1 DDD95B34 6EF274DA D5728334 BD5AB285 5D45B16F 99EACD80 4D20B782
5A1BE266 5A5BCB07 C03672BF 5D7EECE6 749362A2 90714308 E6ED9218 D115142D
89107EDA 421289AA 2091EA61 DDD7DFB2 843C89BB 91CDEC77 9C8FA0EE 48D42678
CEAA1B0B EBD5D4C8 CEA3B367 FCBCEF41 A9119612 BBB8CAB7 088A4D2A D94CEFA8
75430D9B A897AA02 960A54BF 6400066D 31115AC0 1F3EE6B6 F9599939 17958D65
42A5B900 AF4034A9 06E126FF 00C7A0C7 CA16431D 5C01D7CD 558A9459 36935F84
1B2FFA2D 6B45A01B 79C2FC13 9FFBA2BE A45C1105 1004319D 1757D1C4 EF0143E2
BEA930A2 CA067CFE A588C702 36E159C2 B08099CA 0CD955B6 2384FA2A F532325B
96949881 5B8D854B 00490892 08051004 B004E0C0 357A4108 7D5B366F D02D732D
9B4E596C C899EB5F F611115D 1042171B BF4B48F2 094D9B09 9C25F1F2 FEA1B908
FA2D2920 F0C23E5A 8602BDDE 04784AC2 A7D2B218 27B0C0DF FF00AC1B 57409624
20C067EA B60985DE 251259AA 36B1DE74 03C0872F A2E24305 BB1EB22A 998ABF92
A4BD8A32 301B8A8A 5B429B85 01C3474A 40F0D741 36FEE720 4BD862B3 8135233B
C73A20BB 2D4391C4 400A2008 A0008200 0A2008A0 00A50023 86000A70 66B800FF
00735E5A 0631DC43 000E6E08 72680F42 F4B13CFB F35A0302 ED899E84 9009B503
AE5430C2 B0B19770 EEEE75E3 D82561D1 DF580764 269FEF49 2C4CD61A A682E3B6
76816F7A CC48452F 7E786B92 104337F9 3EBE9527 675158EC 934185B0 1BE34ECA
A14246AE 63175521 3E1B257D 5EABA4AD B53063B3 75D0C874 660978E0 4908E5CD
05105D03 0C053363 B7047A5E E5B2AA53 D0156299 2F9FB8A4 1BC2DB09 B64908F0
F92CD908 3404686F 6A30E759 54D00A50 BF3AE949 10647E15 B02F3CDC 472C9867
2399BC2F 97EA5A1A 442CDE8B 8CEC6082 A24EFDC6 78F1AE8D E75375F1 03FD6BF2
0FDA849F 68DF5B1B 7F867289 216E2517 D93AAD09 EAD0EEA6 01A85D0A 5000E287
0A400A70 9042D1A1 E8452254 AB99A793 9A4E34C2 7CAAC4DB A6D3A851 887AFB29
357C300B AA452D91 75E35F67 007E81DE 04900450 00410005 303A8319 F0DB00A6
CD27B229 30A27C7F B6B580A6 E36D7A06 E2B2260B 10BF8A62 4C356B12 5305CD84
AC5C5761 D200A383 E5E51133 04A167E9 D1CB8BEF 4E345D9A C5D0B7F3 8034FF00
F275388E 59C38ED0 B1F6C096 11DF6E23 4D3F08BE F8C08573 AFF9693A 15C5CC8B
0F1DF8ED 6A2F1427 F2CE98CB DA38EE45 377093F9 E278826E 5B55245E F40B2B55
BF14B88B 545CB2A0 3C73CBD9 929D02D1 4E2BCFDC A42E8097 595430E2 2E0B1004
4148824A 22F4AB70 DB02C14B 88F12520 9A6A020A 70059499 B77FE35B 7D306AB3
6136F54F 84785B16 72FE91C5 BA42F8C6 CDD7AC6D 92237CD0 D4637F9A 6F10AC05
612D3683 EAE94615 E0A01F45 08A400A5 00A40441 0035000A 2008A000 82000A20
08610861 08210861 09E04100 97F7DD5A 070BB9B1 2D896102 3B8B792A 2E590D21
6CF6CA42 D0E11569 79AB503C 2ED4B5D9 3DDFFE6F 5403226B 4DFF00C7 682ED3BE
8E9285BA 483B5412 2C5418AD 7A0602BF B236322F 5ACC9842 E89316B8 777A1534
0885B97E 867FD69F D476BC06 E858601E 58A618A9 AECD7512 593857D4 08395784
786609C0 37E85984 36F5496A A818A45D CFBBFA2D 7B29CBA4 666A5427 999004D0
DCB30049 00DD0CE0 87AA0BCE 25392544 2EE3B687 0DEED5C8 9FE646B9 9A3E2DAB
36501109 55000503 0A2008A0 00A50027 D71E8490 B55A2420 A00BA000 8200430C
9200490C 82000A50 0A400A50 0A400A20 08A00082 3055EB46 EA441544 D9590D98
71872A0C 85355C46 40BC69BF 5B20504B E2FDD3C1 6F91123D 2E5ADE54 172C2C53
DE35DE89 C55BA088 AF1715EC B2397853 71420993 5F4A4098 735A559C C254A79C
456A222F AE36F6DC 656A15E6 B18C8147 DAE20879 DC3B173F 10F41419 D738F4C9
F7D0B312 81AF7858 3636AB31 5C23C8B3 BA3226BD F0340D6D C6865A17 EFEAC9A0
54B7F65F 5BF606F2 573EDB06 048AE3A6 00A7D949 4892DEDE 8424E050 00D212F0
F1F2A504 B35A12B0 C439A2CE 1FD507A3 D4823113 F2BF5B38 13C1C6CB 8F1FA847
188137B5 534B6A73 0EA8CE43 5317C540 09530BE7 5B2A5978 17E3DCE1 CDA0C7CE
A0F0C6BE D5A25411 9FD68EA6 68D0B172 A5005600 41000510 04500041 000520A8
00D56A09 A031C305 504D3D3B E1B6F0A6 207C5AAC DCE84DDF 2B30666D 2CB2475F
7FEA7685 FC897986 4FCA9B8D 5B414F9A 4248EAA6 3982982A F5A4BB0B 406853EF
A1938D61 2D5DE123 9DB06BC9 744115C3 1D1B0269 0AE9A755 BFB5A192 318413F6
5EFAF4A4 58136226 CDA0AE18 8A8EE33D 5E5E74BC D44A945A 41F24E69 C7E21D2D
2B5E223C 2219F4A7 9C4C65C1 66D8A35B 52602C4C 60AFF1A5 3D8D1B8D C6732435
4B55A367 D20173EE 5E359E65 6B201FBB 9875DA16 CE99C14A F5AD19F0 A7FA063C
49B8BF75 EF995DDF C5BA51EC 1AF2E6B2 545450A8 CACEFF00 876E5B94 12C86A02
0A160450 00810A20 08A00082 1074A504 D4054057 06630861 082108A0 00920849
004B0005 20051004 50004100 051004A1 066E9DE3 59EC7F92 516DF223 D459771B
528947CF A1BCAD88 8B0BF25A 36CCB239 42E75971 01BB1784 504100AE 09B12D89
B0AD080B 18BB350B F0F44925 5138D720 C1426A84 1BCC74A7 361BF2AD 8602F6AD
95B35D10 F26F498F BF5DC7CC C0BF2976 D62D37F4 891D917D BA3B06BA 6A86A86F
F9C7DFB2 94C650CC 6D4021E0 974A12FD 7C251224 7F0A30FA 2D087188 8E101462
4A3058AF 0D204F0A 64D5FDA5 CE980DC6 5C2F8A15 7D51EC27 A96B2D1C D07AF3C7
6D88C0F5 219F74CE FEF16AA1 7B648AA4 3F0CE6E3 59043386 AA81B992 0807A305
94A587C7 1C7CA5AD 231B1733 A8411EBA 1A415200 4100060D 00410D20 484310C3
65C65FB9 D94896B5 955051CC AE587CD3 29AF2555 542784D6 0545930B 9BF6F651
D89C51E7 A500E787 8A109BAA 1092003D 4530D405 A0500232 E687AA04 43D20362
F1D204D0 430CBCAB 9ED50753 721D4E20 93216A2B 1269BD7E A51C86A4 33FF003B
81E9422E ABD72BC2 661A2602 D8E0EEB7 6D099ACC 80DCDA04 A91D6BCD 12CF92B4
1669EE50 16008275 A401AC00 82000A20 18580041 00051004 5000D200 41089208
5EC54F0A 90FD5129 2014A02E 791373D1 5E108D25 6E016811 B48960DF 49F1BB55
EC556CDF 68F52CBA AD122A85 43B89A8B 455ADE01 A10B8FC5 36DF22BE E12C7ABD
22971923 8FA67CCB EE96B716 3721F890 AD9C7FE6 ACAF55A2 386E92DD 8FE3AE41
DDF6A2C4 D3A365C9 5C81F0D6 C2259FF6 91647FAA 107F6775 61319773 1581FD2D
08B20D10 043174E6 6C6A6F20 6EFCE203 D88D65B1 0B4407F7 7C2DD7A6 EB8C3394
6A8578D3 B699644E D0286509 4F2EB9F8 8261BA02 7183C12D 0BD0EDBA CF45CE0C
88DD64DB AE596340 F5D63FB1 4E51E7AC 5C227E16 35E4C1EC 3C48E2C6 859E80C2
BDCC32DE 23E2179E E57AA284 EE5E2B1B F80D26CB 39DC2F32 DD04D0F2 240484D9
9200B8C4 19DA6D48 203D3484 1484A0A1 99DF2FFA 2A7D55D1 D82276E6 5C478546
1DCDF7A7 3A49294C 2776EE6D E622C2BA 6D6342C9 83C34585 19378419 03828233
043CF6C1 3D016C9E 45A89899 72CC2EAB 696C6AFA B96B9BCC C224E297 6C1E5FDA
93B41B25 EFD6AEBA 55D441D8 A14E0296 AA109200 688A603D 81E08210 E1410935
250BEA66 CD4C12C6 D2575CCD 5DD08456 13912056 7091AA92 12BA4F9A 5271DECE
7BDFAE2C 55C2501C 663A0ACA D71A73C2 42B3B6E2 2694135C 04587CDA 30008210
D78A0B90 04E0A504 6389B025 10453096 080A2520 F25A85A0 4B08A32D 003E5B03
82E55247 354398B5 F4D67B83 5F2E6B9A 0F3063B2 48CC7305 402772C9 635D5C2F
D88645D7 6353B8D3 DFB25785 7733C32B D83D19D5 D5A0F2FC 2D9B0991 CCB25A00
AC065200 62821086 000A2008 A0008200 0A500A00 66096116 7B8C6E1A 8C75E242
C3657102 2A5D9B1A A7122F12 6FCA9509 DF5B0020 A300A774 8444EB28 5A41B869
2FC6C165 44315E9A 22443FF0 A5408462 0C2EDA13 F87125E0 6E8921EF AEDE5542
C876B2F8 EC7B3873 4AF51FE3 F8DFDA6A 6EF38F8F B8497F6F EA88A9EE 9779A42B
902A587B E0A285A1 9A615027 01234E47 7A219E59 5A6B86DA 1A8BDE12 0CF1A49E
6B58530A 0B24E6F1 A99CEB35 32744E6B D55BDC1F 1885EDFA 0433A5B7 02B2D3BD
5BA69AC8 78624B0B E044DDA4 6F30A5EC 0D0610ED C996933A 8615CBB4 6BF3DB4C
18A76589 A567733C 3449CD3D DEC33A7E 6B777FEA 381A997D 6FA2D262 9BDE7F79
9EC5EA78 AB17AC29 15131A57 E7D9BA68 1593204A 70FA9084 3437C41A DA43367A
53A610AC B471DDCA 8D586711 7AC30559 6CC8B598 CB9DB0A7 7DC73646 95455D88
67AD0007 AC4F4A50 8F239C2D 9BED4869 395EDE85 8849E48B BF5BC32A B16EFA7F
968DC51A 6ED26171 82FC03A7 5585BAC0 977079D4 222AC87C B3A5AB19 36E52E94
A35D8288 785334A0 40E67DE9 66F35102 2389D0AA 1092088B 0C0A3043 10F9E7F0
D9D5456F 531B3D8E 65BDF6DE 06E667E0 749BBED5 9695D1B8 DD98B575 1D6499C7
C71BBF99 93F8BDAD 8BA6C9C6 9813C5C6 2826CA89 CD13E999 1A6C3C5B 78D26612
86427B76 16524FBB 714EE4FE D54B8277 534843D1 BA957C76 575E34D9 B9145158
54AC4F41 1DD9E8B2 227012DC 02410502 0A603A37 C4262D10 6A8958D3 1394C066
A208E565 08A00015 3D43089A 67E3A5AD 994AC0CA CE79E359 8D600E5F EA30034A
308B5C02 008610E7 54DEDC43 32E33E60 AB26B631 D28FEA49 4097AA0B 60861086
1082000A 20082108 A0008210 8620DDCB 4265E424 F2424675 9399A3DA 6632E1E4
817DA663 43DA78AF 2375437F 235230A8 19A05084 E0AF2510 A3BC4515 56710FCA
94F285BD D7DAC8D5 E3A54F82 3525183D 64C9C557 913736D2 7A152FFF 00A70B9A
784E33D9 E2258F2D 69B78346 385ED738 8EB6F6BA 3FD2B06F 924C2A6D 3D749177
C858E4B2 398D9C91 B713AF77 DCD7007F DA92E6A3 B5D927DF ADBE4374 312ED840
F78674D3 ABCF3B0B 50E75B36 1BB65C61 11B5525B 4CB64854 01F99E35 65E21C15
C1FF00AD 170D31C5 EB8C2C4C AD55B9A6 7D9CF054 C11B6FDA 3A30A564 F9D8DA4C
13A59F36 A6F23051 2DEF3096 C772E23B 23C0F251 FCAC378D 1627A75D 85B9D00A
16045000 956B7B69 B458385A 75924A12 D7E04B9E F9666B68 27F4EEFB 4867EA4A
A717D7B0 63074CF9 CB3E76ED 62B904BC A157AEC5 7E83C1CF 2A196112 0197ADD5
5EFA6A05 059C697C 936F622B DF4D38D0 C87D3925 8E3F72E1 24D34A4F CA1D22C9
2237AD29 4DA031E4 669F12F1 D8476CA0 B369A3B1 0370DCDC 7205E294 575752AA
AA7A7E35 E4A20476 CEA9E65B 1D2A10D9 50235885 D1AB1517 E061FCB4 89541856
E8FA95BF 14616FD6 54CAE212 977C2D09 70D05F6A 30B7D6D3 920A91F8 A436C008
939E5448 A860F613 0FDBB23A 698C0D46 ED591520 A01B5000 A308A3E1 132DCB3D
13596510 990A506A 30920805 205CFF00 F1037227 54D6A452 1C31D7D8 E6E2DA98
EFEFF19E D5C77AC4 2AC68ECD AE1DFBEB B6761B3A 635FBBF4 5B967CF1 A7E3658B
AE7C34F9 1AACBD64 4269535F 027540C0 E8B9E53B 21961E0D 37F02FEA CC240D6B
4B93C975 C946856B 08CCBFB2 2A58E236 A4159B6D 960D74E6 B970ED7C A4FE6629
03C714FF 0012C3F7 2BB2FCCA 76337216 DC163713 8B6A306D 0958D333 0401F8FB
45233505 0844410C E4CF3510 E35E0062 6D43008B B0FE0490 A9061403 CC571792
812FA8DE 98645BE9 D0AAF12C 9BA2C744 216E0A09 DE2D9934 2786103C 4348659B
C410A50C 2D62452A AB0D0155 08051004 B0045000 41000520 05100461 DEDEDC56
92800D58 83EA66CC B886C965 2631D612 893BFF00 EAA6EE98 1B5A16FF 00E198C5
5DE33222 27592901 B7351063 679E0412 D63BEDAA 54317E2D 2B527147 9DC39919
DBE0D0A7 85D3E8CA E37CA415 95A765EF 642CB52C 32F8264F E550B0D4 68940B83
8274AC86 2F7134E9 B7175AA6 059BFF00 05E4104F EAF556BC 32D97459 D9C2E2FA
8192C8A7 A84D1A62 D8F56664 67E9920A 54B7BF15 D716527B F1032E8A BA8697BA
63FD598B 7C600A6E 1BDD8736 E4BF60B9 EBF45F3B 374F6F7A 312AA25C F4C17ACF
A42AE3F8 45EF21EB 9C4CE059 A9935C6A 22ECD9E6 429B403F C1F73335 98470D7B
BF4865AE 5575F81E 0AAA1B1B E51DC3BC 892D882A 025BA3D2 F3EFF36D F4D65BDB
F8D4449E BC9AB8AC F347C8A1 8649C881 77FAADC2 B1EF30A5 D142A3B7 2E2FD23A
42115C62 666FA317 01D8B9D1 B5390506 16BEAC9A 3791F3CD EAC1E57E 611291B3
8B9FB648 0C164F83 AA81F982 BFAA9258 7CF2A444 888CFAD8 3C5A904B 30A1DD22
98FDDFA9 8B9C8C66 D267A9B9 96A0B847 81CEB258 BCED02AA 52C55791 51FA8288
54FD8322 FA9D1837 77510868 A860410C A400E001 765A2591 99D31C79 9ED515F8
924417D7 AE7A0B5C 39DA8208 1CC43408 4A408A29 47559A8B D8F4B96D 9B9081E7
5B140700 3EDA1268 83BE0450 4312249B 344B76D6 C5363784 44E629C0 A9683FCF
A2F75947 3DD5B05A 1FB1A587 F5A3D2FF 0077CFA8 8E868E1B DB61A96B AD49273C
EFBA3DBF 5BD190F2 6C9DCB99 D351B6B3 866676AD 96035C33 338236FB 4EFF0066
2BD84258 ACC6E164 B11ADA90 83BDBEF7 3BCDCBE5 68CBEBD5 C656ACC5 1BFF0074
8851B15A C3227DDA 802F6C7C 47324647 65098905 766E398F F8DAB413 E67E13EA
D9AD49E9 8D517E45 8FC8A6E6 05755F9E 8599F00E E8A20448 EAB2E408 9471C445
88F8D613 2953845C B0888E10 8DA0D39E 00DC490C B3C74B00 DC6A8990 2FA80653
EF869EDA 6CC89658 77044D5B 4A6B2656 4F6E2BCA 66BCFD58 37296282 0081A506
62870A80 7A6EF35A C5D00246 BC6DAB2E 235BA610 04500052 0041004B 00051004
61CA163F F0DC2D2B B90BD886 1EB0C5D8 993140CA EE22545C 0230A800 0CBBFF00
F898E35B 8E743647 96963863 36BEC55B 7B3356CD B7654498 A82622A7 562104F9
D23401FF 00564A59 0C593286 EF75B177 7567E14F 7E9A1DA4 1F76947A FC6EBD62
A74F53CD 478D0B78 7F58F7A1 3452A544 19C52439 4C361709 86305042 F9B48B9D
BD4FA665 A26C5EDB 0D9B18C5 C076C845 8DE8252C 4F6A943C BEA5F759 2ED60AC7
2926A469 885E4DDE 0A16C284 BE9E144A C8F3B1F7 8C01F7EB 924F721A 0C6F8A13
627B28B4 99298171 47D80C20 09322ABB 3D3A2DCA 5CEA14D9 1B6EFB4F DAA7D105
D82A56AE FF001F1F 68D6BF04 9151425D 54B4E0C1 7BBF5305 62485753 43BE59B8
69CEB636 1D640C4D C3FCABF4 3E4523B0 DA2C1E62 EEFD2D08 C28E6BFF 009EF4F2
7ADD9A46 3377E859 626270B8 46A8616B C2CB19C5 5F0E4F83 AE4F03CF FD19F377
3CD7AD3E 6FC6FC29 8C073C67 8A337102 674A3049 1F847025 20DBBF2E CCF8A52D
A87F7831 C1F212B6 4B0D8E62 2C24D758 970FCDDC C15DA754 E8A581D8 C6CF5B7C
2670E096 80F62D08 91C22A40 7F4FBAC8 97D8C09C 4296F0DC D5A46391 D113E858
77A3FAA4 00C1D6C6 E12A18D0 0A2638E8 498009C5 94E85BC3 88D03DA8 3FCC8C17
65202689 580A305A 1269CA75 07F99D14 EACC133D 04E9815D D18DE0A4 D6EAE8B5
B1828D29 A28D4B57 632B9769 8CB709B2 60883362 19FF005B E8CD9A8C 5167B279
3466A14C 4CC92D02 0C6D0ADD D711F14C FBAC882D 7D892D03 9B37C45B 9FCB6DF1
A41D2B7E 33752D3B 931D5CCD 9CEBAE64 F6FE7529 CC4A24B8 BB58CF8A 8439247C
5429E4B5 5AA7013C B2A64764 D99857B6 B6B68329 41FF00A5 979C5A88 96449ACE
56D6FA83 3EC14511 A9840018 581A000E 701E8470 365784C0 B2451370 D18210B9
E4A608D4 4B0C86BD 2D89CCB9 4AAD95B6 2B604AA5 36D6ABBD BE5CD554 EEA8641D
EA3011BB 96C8A406 33A81AD8 F75F7641 0D1D3982 EA8BA959 F0A54D14 C4200821
08A000A5 00F7A609 10F15A03 63DE3255 F8513C15 992BFCA6 8C246E09 48DC00F1
A5004CCB FF00F879 EA8FC762 8CFB5A63 D21B8555 3356EE5D 18029218 B1CFFF00
A501613E F1BB5109 68C8D245 64D84CF5 4B34DCB7 BA364D44 67BE6F26 D7B15B15
54FD736E B82F9A20 2C2542F7 0F7E2D4A 28E93A96 6FB8F649 C7BC3F52 3044A542
18DE20FF 00670866 2B478A13 2357BC56 23B5C5F7 21CF5984 2D997674 B31A57EF
DEC04266 8F0EFF00 4CA913BE 028A338E 07076C46 57E853CD DE0C200A 4C4FF3F0
861B8E6B 6A969B9B B23F737F 740ABA84 6D1393DF A4F4B315 98B78C9D BA996D4F
96415F8E C3B82F0A 06011355 42C41964 3DDFB545 2D2249C6 E3FDDB95 ABF2347F
A6D8D0E3 563D73F7 FC334515 5B6A742B DDA7478A 2399E6E3 5F6266E2 FBF0ADF6
C20E0C42 4FEAA7DD 11BC53AA 2353D898 DA803EF1 52CB14A2 A2CF6351 D5CA54FD
5A17C11C 2FE94D00 AA0A258B E04A60E7 6AFD42A6 B2AA1815 A29DEABE 8CB69596
219D5AAA EBBD35FE 5C271E6D 4A3220DB 209C3239 BCF37743 CA22CE77 84ED5D78
3B11A3F9 A78C4433 F52217D1 96A1341B A9CC85BF 7DA482D6 0041105A 40E1556B
3F4D6DE0 7511C9B6 07211858 00937557 0047B314 8EB6EC33 912B8900 414C10D4
02346A58 1AB3B59E A5832779 ACF43A03 67ABF484 BE3BE0D6 58544CA5 8EA3093D
1C8CAA82 7D6B895A C8F2DF7D 5C14407F 0138B7F6 A27F416B 52A107C8 82CAC494
B30514E4 EEF3035A 45D40EB5 5867D294 B812CBF7 E2F23F9E 94BB5140 27ED9436
4B37A92F 967C895E 7566DA5A C861A6E1 36DFD4A7 4F9E2F32 2B035E64 CA234E76
8C9D01EE CDF1AC18 27C9EB2A 6E6E4EAC F7A03FAA EC6E5191 D5A7067D 93ECF1A4
541AC4F2 CD3581DE F959D40C 738A7A06 E1B86EDF 1DDC5320 C6729D8D E0D550A6
0A237158 0C1E493D 4E91619D 17C8F0EC F9028CE7 F7EE350B AC79B6FD 514B1117
3334D619 F45AF60D D01B82EA E235B2D0 3F3D6DE8 65B323F3 5B64F3A8 BA9D0B3B
817D0DD7 A65961C1 5A94FA7B 073A514B 96615928 E6972A52 41ACF9A4 8D041236
ADE806E1 6BFE35CC 08F9CEFB E2B34DBF 1411DFA8 F5A4EA47 30E7BC02 DEE48E06
D2667CDD 5ACC08A7 32029F68 9221D460 B6931017 C56D4229 BA458570 4D88836A
60560DDF BE7D45D0 15E3B9EF 4ADFA6A2 09BC06DE CAC69482 E7820157 E35930D2
7E7F87F5 6C1B42E6 AD36F295 DC3B5ED3 B2BD2A9F 9AD94D6F D20B4FBE B5D93005
17A85431 5437385B 6C3D5428 5C8FE075 AD3B13A7 F0E560D3 A2943332 F52BA6B7
71EEF3A4 EB68D9D0 59CAE826 EA7AE1C6 EBC95D44 ABB7098E 3EFE3DB7 71055C1F
4EF952C9 F33505CC A3D00F66 595E9BAB 89C7BFE7 F46F861B 2AD819FB BA9C5EA5
C6EE5D4A D08232A9 B874F273 6F594FE9 24F7BC83 7CED2259 EA90B77D 912E8AF0
59D637F8 A69BA145 03D6FF00 5D4D4489 C694F03F AA43E2B5 5F6A43C6 969EAB6C
DEF79D0A EA6A5D7B CFB774E8 2E4AFC9A B6E68CBF C72A4856 27C9E5D5 4C1FDD17
58A81A4C 67835D79 DE7133EC 173FA95E 4CC15578 1FC56A02 82811F84 50810AC0
D8D43B37 F8EEDA67 15E59E15 D14AE2F6 F3DDA5B2 C752036D 46DD2274 9E64D186
80BCEA18 B8045000 D2006308 A0008230 34944B3F 5EE0FD07 65537656 06C2F594
89DF70A4 AC291291 D1BECA1A 82814EC5 0D40FF00 A2A0CC66 DB079990 DC0531B8
270CD6DF B2F626DC 41806F6F CAC8D831 3F44D8CF E2FB03FA E46349E0 4DFA21D1
234DBDE5 FC7BDFC5 1956A616 016ACABC AA93DAD8 0DCC67AA 829B86B0 96BF7076
724F9A42 3D6B9FCA 3D4D1795 99A9B095 89F80A29 D29BA62A 9CBF4589 89ED1279
BC6B45F1 A7E45076 750E1B7A 9D929663 216B7DDA 821C2462 49DE4147 11B5A2C7
FD7CDF3E C4E837B3 D54DE3FC F64E72AF 7CDF5036 65C78A79 1BBCDF5A 1FE5F722
93CE72AD F1CB26E8 45B371CA 57B045B1 5288F2BF D5B6854A 1831EB5A D60DD9BC
DEF41459 6EA9923E 2CD9E959 A141669F C1FF00DA 7A079BE7 C034D61B 907F8A6E
33213A89 CC66D050 C0B25C03 321CAA8B 51EA3F5E F0A66D60 09134EEA 8B69B6B5
C6291D73 F25B37BC 64047C3D 1E16CD55 A21A27C8 6DB871CF 4BCFB21A C4BA5928
358BBC67 67E537C7 CD443A6E 22C9A46A 9BB87167 66801239 8174BFFB 58C47992
4A3A26DA 7AAFCD65 278D6C54 DF59DC37 12EFD512 5012E0DE 84600E55 C019B5D6
84A87598 ABD5ED5B 1DD4A94C 85213991 76C16544 D04A4049 088230A3 7EDF16EA
89A122D5 73EE5351 90562A87 CA490512 6DEFC788 7481BEA8 BE4555D8 3AD42180
AD3B87E6 4CBFB031 F2F5A42E 4E1BF8D2 981C9AD8 72D23849 C675A456 2FF7B85B
A785B43C 6447257F D48142FD E1F38875 166D94C4 1A3F34FB E6CCA725 A242A947
5A462FBE 6344D833 6D3B93AC 75BE6B84 564FBE55 3186A182 E7D7EB3A A83989B4
5BFF0054 17DE44A4 6A652D7D FE3556C4 2C6D1EBF F7886F7B AFBB860C 5A067A31
F7A4B856 EBD7A6F9 16CCB66C 62B9EC39 EEFAA44A 250D1C5D EACFBD8A 3EEFC13E
204B8F15 2B0DDADA C55B5C18 C8D75D05 96F3489A D2E067F0 5F55A803 B531540D
E755542A 5EAA3BC4 883AFA20 19849E4F 47D8168B B17F67FC 1EC425E2 9EBFA52D
D3DB6892 1123697B BADF79DF E1C17132 406F5115 62822A7B EB7478EE BD8B2CF8
6C8A2D76 F376EFAA CBAC78D9 D3BC5119 19412B97 B4A98A6C 3E21ED0E 94E4050B
316D0616 CD639E8D BF7D1A51 1A9A7774 9F777B1E 857502FC 9BD73F13 7FEA89BA
228C9208 05100450 0041004B 008ABB88 A500AECB F92B851E F3BB6DCB EAE69799
8973F649 20BB9E2A A8550B0C 0513EF56 B200CD3D 044756D5 E32F51CF B2FC5E32
694C4548 C53B9FEB F4E45477 165A0D8E 0AAF2159 21C003EA 7840DCC9 501808B8
9CF60C4D 25D858A4 63441F5E A15B6419 7183A636 1171478C DA3D5A94 54BB7111
BC40D4DF 2EF19F25 8EF036A4 1D24BD74 5F5C6646 BCBEAD19 D8686CFF 0087E14D
70820B27 E3784103 19D36066 D45C7ABD 530485E7 AE514142 E64B6429 D0B858C1
0504BCBC F82BA599 F41E043A B1C955CC ED47EBC6 D839E547 4A4E5672 2711FCA4
CC28D42A 4A249726 F9036C97 22E806B1 5E58F6A6 BA085ED4 DB96C590 E7590210
1F1C4A12 CF116D18 C06E8968 5CD1CC7F 101630B1 A7A19E45 DB3D54D1 60C55458
864ED5CA B345C7C2 59EE8935 A0BE981B 37D4F7CD 199E954D 98B964DB 5FEB6344
DB3A7C3E D5A6D91A 36EA135B 33F92FDC 37C93C69 A37542BD 4B7B2FCE 22F49F9E
3FA9BE5A 1BBD78D8 2AC51F51 1BBF6059 20D7EEA6 72BA52BF 7CF337A6 6B373C42
952F946C D4924CAC 4AC28697 36516EC5 6E342017 E43EB17B 410CE538 4300CD05
200520A3 AF5D62B3 C844BD7F A6EA13C7 1DCFC515 06C1A204 5784480A C0BFFA5F
6AAB0A96 012B57D4 BD9ADCC5 54F94B52 368C1236 CB14C807 74A7BE5A 72213E32
E6AD2EB3 08510C95 B3E16CAB 154D4AE3 B4C5351B B749424B C5FEBE8F 7DC38AFF
0092B83A CF4A1D63 F7EDE14B 9EB48B25 CEBC82A4 C97D140D A5883F05 50DC3AE6
A2E68085 0F3D324F 177FAAF6 0DA371DD 6F36329E 05261950 2E677C0F 2DE2B161
73F77CDB 3322343F 95F70C86 32DE119D F2BCA856 84BC8DC3 7EE62F63 A62EF61B
BA9BD6DA 5DE47051 929185CC 392531BD 0138C12E 6BC8E488 043C2817 B8983DE9
44B415B7 48F51395 EB856367 BDA85DA1 810F1771 D3BAC95E 342955C5 A854222C
A4BE71A9 C951FEC4 AD6C4B27 A3AD9F16 8B3E1FAA 8E554B62 3BABA9F1 5F76400D
D4EA65CB F5CD79F6 A925DDB6 27E588EC FB376F53 C8E1812F B2911172 EE49EB6D
2448E55D 9C8C974E 693D00E7 36358288 686ED5DE 75E46304 D23A48E6 86A920BE
FDF20FA0 1C253022 BBB0F093 1967FA20 D908C866 08D0BBA7 0D200510 04500041
000540B8 8454FC7B B44E9FB7 8B517922 1194895B C6096C05 13861082 000AF0E5
982A4DD2 336C3D35 AE656CD7 5D5879E3 D78A7CF7 F2285BC5 79F25901 FF002C73
119D63F9 577CC62F B253E46C 671B246E 602825D8 1C518DE8 DDA19BB4 EFA50D50
8BB55EAF 4529E03C 77DB3214 EE1A3688 FA9F5300 A3F5CB42 EF621C9A 9864584A
9DE8159E 78510123 860D7311 74D8EEBA 89FF00A8 1A8E663A 0ADD3EDE A63A1A91
6A9994B7 3ACA4283 76F68B27 B66544B8 F75C4FBE 14008281 9D628422 CDDDB3B7
3D0B82C9 6ADA9A5B 4E8F8E98 6CB2A9CB AB22A29E EE2A0888 03CDF7A2 2E9BEC74
6F8BC7FC 52F053E7 9CAD3E52 F4A5E828 C02D107C FE2500F7 5F4702B1 F1132E89
C06EA336 E16319DC 0291AC3D 423011C4 666A38CC 2FF7ABB2 AB686C1B 8D7DBB3D
2E4D027C DD171D9A 8BC5E0B0 254B69EC 37C0BC78 9A544712 3D31CCEB 68E24CA8
6D2CA3DD 26C3C561 E57860AB E85E1B58 17E640C9 47A60EAA 9B951C55 854607C7
ACFBED2E 1BC448F6 813F975E FA1408B2 4DA5324D 9D715FCD C309B50A BCF0693B
6405A5C5 3A2EBB11 D61E8C70 CF3F4976 1F9A3923 56B2B0B2 B8BBF393 317FA69B
CDA775E9 0E372719 187C6D1B 33816518 88B89B13 C440461A 0009FA9E D408C882
04735B13 09236E5B 04559F3D 1ADA4382 D53BF1A5 4301D7E9 E54F3702 02175E6B
EC83DA11 17520B58 56ECEE5D 33C72AE2 D7E853DE A97CD909 D44EAAE0 0051F933
20CA71A6 7682E35E 677C7F86 6DE26C5D 5B9EA040 FB373B75 C4D51D5D 2167F579
5E5C95AA 0211BAD7 EDFDD9B2 105675A8 3B141DCF 78519960 C9C36D77 3321175E
8442CA66 A58DDB73 CF97EF55 2313685E B2B85D2F 1E8EFEDF AD5D44AD 03525B09
F42210FF 00C2EFA5 521AC93A ACD5C8FF 004CFBE1 F9D236A4 A5815F22 7056C978
7D185520 9D40840B 346E7BE5 2CAB22B8 2F235BB5 CAF2796D 65DFB235 45C8D4E4
7FCE6D24 9DF36D03 7E8D6527 0DACCA9F 55A8ABC0 F9136BCE 07B68399 1ED8B488
879E2C73 9ED574A6 315557E2 98C01122 FA7F4545 8E54C8F8 8212CC38 075F2A1C
16FE0101 93F4A66C 155ED2B0 432BAA42 F9089A9B F63675A4 FF0084F8 47D85B70
C5650971 24B23EE1 20747FB6 346126AE 23E77FF6 7F650B19 DC052ADA A8B8C12A
21946A20 A860F3A2 A2C62070 DDCE928D 96C06A30 9608E0A3 05308B0A 60052005
10045000 41004B80 05960049 6C5200D2 00E23D04 A071D350 0067A3E5 2AC64A7C
45D3BAA9 49AF5073 0DAE593E AB48C346 B775A443 A591B7F9 D4B9C734 7FF55CF1
5A96B6B9 AD8ED5B5 BC8B18F2 0ABFF967 14DD867A 0A9ABB86 264B97FF 00A13A24
4249E83A 194D2501 FE33C795 153D5B66 6CB440AA BD774717 7BE3D8AD 3AB92478
EECDBBB3 7ADDCAC9 6F91A6AC D40B3BF7 3B3BF1AC 0AB017AC 513177AF FCB2006D
C7EF0FB5 243047C7 FDD78BAA 7A1F51BC 1AE79D0B 0B4CA7D6 E05DFA23 23F2C25A
16E4B9FD 6D6B135E 628E5043 14ECBE71 99FF000D 65A82B4E 642B7F22 269F575E
C13098AD EB2C2924 93D67C93 FEE51B1B FB76576F B817BDF6 517E4D7A ACCCBC90
DC461278 6DA9109E EFEA4A60 475304C3 DE16A904 44DDA208 93BD047C 5F4A226E
092EB38F FC362F7D 54709A47 EC59C1F6 32AB0754 67857D69 3C53D2E2 FD654B2F
4E1E78CD 0957A519 32B80B3D 660B1FC1 673DEAA0 4638BE5C 45B06A5B A3D59597
14FF00C4 695B981D 302155DF FDBF5B58 56EE895D A5F03D0D 53CEE338 F9AC9B86
CF6441E7 32243CB9 DEEDC97D 4AA762D9 C8E5571F F9BF59C0 ACEAA85C DB246CD1
6441283E EE60D0F8 FE45C1DD 3025BDD6 4AD40B06 40BD588A E92C8E37 ABD378BD
52AD8714 FC6D0B58 E12EC8D0 9F4BBF85 439C7869 BBC7AB7D 86E87E32 715A97CA
0C164FAA 24D17F65 0911DECF AA08C8EF 593432B2 DFEEA208 184E88F7 01DA4195
44B497A1 5DBF1369 36C9A1FC 9D18643F EFE3D4D6 F0488A29 9E766EF7 2C6A9B23
5383EA44 9499D7B7 BB7F17E7 577D6479 271D8948 1A2EAB64 B6A5D51F 7CE35D78
0C1CB3A1 677FC1E7 FE7A57D3 BAAA239B 9D70278D 9D72ECCB A13B240C 9E7C5E45
050E30D2 84BC6974 F192CA95 B9447FEE EB74F679 FE75434F 08254433 E4B5A4D5
7A60E9A1 C55C64E3 1FF81169 14BB8F3E D73EEDAB E647399E 7522AD7F 76CF1BF9
C8AF7543 9DD8848E 472F7279 09FB77C8 75C0B65C C41E9BD4 9BC914FF 00C23D69
FAA4A82B 63A2F5ED 509E8F75 266543A8 03F2E2E3 6CEBC7F9 BEB5EEA8 697CB214
C13D3384 77F3EDCA F4932995 B44EC56C EF4978D0 E09BFF00 8773A7A8 8E744A55
2F7B54E8 9E5C1309 9CE6877F 1A217360 80A0B261 F35A1017 9A1B797F 38A94AA5
56BDF1B2 F779372C E0D7A274 1B646E2E 63AB5936 FF0045F9 47A838C9 2C597B93
E35B197C 23A36426 3510B305 05AD0069 132F2500 0A603501 05308FBD 04110D03
0A2008A0 00A400A5 00821086 108210CD A9003917 5A267090 91A7458D B02FFD64
C972FC85 64889FB4 A57388E9 ADD72B3E BCEA8BA9 1CD9E98E FE16F0E1 A336BE65
4B7398B8 62BF73E3 F5AF6B9F 17DFA2CA 86557852 4C340F0A 11D14CE4 E3C6F124
A646A8A2 CAB9A7D7 B2E94E39 A564DA73 9D4ABF2B 0E389563 05CDDCF2 CD9F4AD8
1BDFB243 AB21C561 4E9171D3 715E4F2E 9847E25C 8AF58946 7C9C80EA 741F0391
839D32DF 87534585 DCE6FB77 CB862A2A 498C8E85 2FCFBCDA DC7F368E B20D3AB2
B886C8AB CBA05A75 7B9ED5B3 2159E8E6 743F46DD 9F75B993 37C15752 CC6C6586
8CFA972F BDA92D69 5E447E6A D52926DB 81CE9536 D4B9ACF9 F60F7B51 D984ED22
7374BCE1 B2FC33E0 D9960A11 F0150480 13453055 6BE74300 EE4D1053 CBA26D3D
1FBF5C05 75AF7D55 40E96E4B 9395F5F6 5155036F 8D375A16 3182E759 8CC86BA3
93F1C703 A60107CE 03ED599E 7C366BE1 2F43C6E2 6D453E28 A3FA5AB4 6423D898
F216A885 CB2D084B F517DB82 18457B23 5FF55F0D A7970465 1BA32256 A4BBF46D
5A296CA5 5685DFB2 F8E0DB3E E9287FD8 D55317B1 7B1ED57E 179B76F1 59C6F3A3
4C3E694A 9EBE1442 71672AAF F2429B45 FE7B9A0A B4248216 7B1BF7CD 2C8DB0E8
821B5BEA A8A75FAE B9576B88 C87B629B B23BE9A5 C18E7057 174703B1 7B6E5C03
111BCD0F 82043569 EF112C3F B5AAC22A B9AEF0CF 30510D8A 2ACA55FD 42E9DAA5
95005E4B 19BB2679 A3345261 E15FE14D 7542B456 F4A5E907 B2F4EFCB 6D1B8FB4
B1406E8D 0F33453E 0761B69C 620E0FD3 50116A09 CA65BA10 8210BC6D 18A90999
60A0E9D9 B2B9A92C B81B1A50 8C66BD7F B1BD5A47 2C77A39A 4D9B7AF6 73CF605B
7494E3EE 3E38CD67 6A234D85 325ECA91 02FF001F 6FA8FD2F 0DC0EF51 5CE5F5AB
C184D968 C7CB0652 56487F15 DA426584 BD2697F5 EEA8BE25 8E15B6BF E32D5DF3
E7C33F9E 9ED5032A C893EA45 4D5B9A26 29820A9F 51A718B4 AE4D3ADA C84FC252
8D6334F6 E2FF00DA B6A1C76A 6B82F5D5 B0F4DB98 72E6988D 15928578 E235A085
5AABF623 659FD806 37E6A56B 0F5C5D4C B75928FA BF24EA13 8BB73163 D5E36E61
5692D9CB 17A46CE4 B9981B3A D5D8E9C4 7CD08E96 4CBE6A4F D29C5740 D09CCFBA
B4A9DD01 3C8ABDBB 367A5AB2 A83E428B B88F17A4 2EB230A9 4B86899D 4A3EAD6A
6EE05472 49D7C9DE E15D99EC 154A2652 43020A60 E949C0A4 6095E522 5C764D80
AA0DD06A 844B0005 20050549 00490005 1004B004 B004F08D 86011896 A02E2E18
E04A030A E0686D6E 2DAEDD55 25031E17 5E59EF55 CBA5B34D 2E0D6D0B 3B39CAB1
F0BFC355 2712B783 694FDDAF B7269377 54DF3D35 BC168AB1 D44EA613 EFCEF863
E90C4B23 A1736806 632E449E 2523D5E4 6E8104E5 CAF74867 DAE6B637 C222D47F
F3A22C5A E36C343A 26F976B9 CB7096EA 91FA674C CEE53BF8 56DB4C19 FF00D116
DED61ACA 70529B62 DD22B12E 853739ED AB1E351A 2B265CAB C1767F09 5B165376
CC50B83B EBDC329F 979EA8AC 6861F435 22D96D7A F3C91962 01E1EB5B 8E1D2C64
1999F7DE 27DFD926 D1FF00A8 7B6F361B 259E8F2F 790AFAA3 5BE536E8 DA24EA13
C57AD358 DEDC8441 5790634C 61AB8A2A 0E269C8C DC672A88 AA088ED2 62BF54AB
E93EA83F AE745999 39E95999 22471AC0 E6836A20 A800E617 04211492 7B1966E5
DDAA0ECE 83BF4A58 24C17CEF 9AEF5EB7 017F198E 74459569 8CC69526 4E53375D
1A37922D 9BE39862 36E91CBF C87C5F8A 2ADEEE2B 92B73A3A 3631EEE5 8175156D
1D6B29D2 5D197C57 CAE4D6C8 D896FF00 D7EFAEDA A5A3361B 14EF8738 F27F3725
848DBD7F 342F9A24 84ADD116 F54535AF 3564687E D1B345C9 69619922 DF4CDC20
CD687661 6DBDFC16 54CED8E0 938B93C3 75295EEC 179C3F51 66DB1870 C5BF5564
3911F963 8A7EDF85 9DD5152A 259884BB 9C7F9BDA CA099C1E 3D5E396B 1D95AB98
50BC966A 443AE9D4 36DE2C5E 08A8DB03 B2B21B90 18A80664 5013982F 3D30E2BE
EFE3D457 3C1E43B0 854CB958 93BB8077 8DB18FA2 5514003D 5E7C0A7A DE01C55A
A549B05C 00969E68 73C6A4A7 672A03A2 C9E64711 8CB82C00 F9A49E5E 844FE3D1
B8F1B2DF AEC208C7 B5E011FF 0060CA6F 019A037B B9163EAD 3B496471 3FDE86B1
16B1F070 1BEA903D 7F248046 37F993C7 CD060FB6 A3F6B471 3025105E 10EE0A6D
8FD25712 3BE3AF1E 44B9378C FAC47493 38435F69 6A62CF89 3DD21517 991B48A5
984D845D 8C9AF63A DC07C79D EFC45FFD 4D4D2473 235E9B3A 41A5E7A9 238A91DF
E5AB41B3 A985BA37 CACDDDEF EE8DCEF4 FEA0E728 A2746160 50540C3D 2B0DE71D
CCBE2BF3 A728E2D8 F68F744B 2A18E76C C9E75762 7392BC1E D0D3FB5D 9922AF53
306F5872 0F1654DF 5CEDF7FD C515B7F0 897CAB2B B9C49B2F EA6BD7CD CF5B1599
AA1914DD C50514E4 F5B9A0A3 A0493701 2E89680D 129208F7 D0501236 D5CE6108
5498B242 50A70D24 35014B00 05100490 14348600 0A500A20 08E2BD7C 19856B94
5736D1BE B02932A5 643CA851 6408CA6D 4247DA55 150989D5 B365C98C 36961841
163F89FF 00A42BD8 B8B79A0B 40CB3EDB 52858B6D 1BA79319 DFBA1A84 BE48BC84
DB6D9946 FDB63618 73DC7BEE 7B1FA028 6333EEDE 7FC74FAC 92922FDC B2992A3D
946E7C35 83374195 3DE6F8FE D6F9BFFB BBFA3351 B4E53634 F4ECBF53 A8C918BF
CB10C5C7 7B062282 6348D6BF 4E51AF75 D5B35DAA 1541B916 D47E5BB7 F3E04C81
6FA676AB EDB64306 B55DF2E3 6CA831FE FF00D044 ACC9CAC8 1A9AF4DF 8DBE79AE
8E3E5EF1 DF0ADF1E 81FF0046 2DAF0B27 39B08BB9 FE63AD7C 8D9C3126 6B5A3FDE
9DCFB2A5 158099F6 3DD3BA9A 41544550 DCE2F6A2 D7FB2CCD 65553647 B47383FE
E59789C1 05687341 0CD44B00 2608218A 441D739C 5E7BCDCE F7BBD543 B227B925
D9B8AF57 7D9D855C 7313F315 9EE599DD EB3CEE16 BFD32C9C 71B19765 CA9B0527
882DF6F6 A43B24D6 E364B449 557E7781 8A2349A4 A1C9BFFE 81F8169F 65C48ACE
754BF39E E5F50F36 92152794 6811A131 E89B5ACC 83CE8695 CC8A1259 F80FCEFF
007C9635 366B68DE 3BEE58F3 A05D818D 1BF17A5A 40909BF3 6D132053 9E24D04B
93F041B6 7EFC616D 4CC7FBF7 CF92E4D3 80F9ABCA 3733E5D4 F3EDA66C 434DC4C6
24711DA6 0C8D0B0F DE5C4CB6 424854B1 D7ED5FC1 5E85A9B5 87439DC3 0A30F9A5
7EC72D72 494557EF 63CF71A9 E8045E22 973AE5E0 54A010AC 146F88DF B6E46461
10D9BB4D 17BEF449 C273CC41 CAB3F0FC 91DEA41C 36E2BE99 DC573C26 1963997F
E92A0BD8 02D3B249 29B36D9D B675D4A6 828953CD 86D18A10 7441103B 7633C691
8A5597B4 D8B4712E 9B5FDA3A 5533AA53 B40F2B7B 34A5A9CD E9B457E9 D129E770
2D0BDB98 33C79B16 F6D2B902 47DC6508 19231E8F 53E12C50 A198329F 81F52CA8
43DB0991 35BDFBE7 6AEA6E56 D8616D83 563F768D 80BFBBBB 755395D3 2A9426B7
BCB39691 78FE62FF 00E978AF 65498E7F 30E3D626 96F75DA8 BD89C75E D4D8F3AF
6EFC0B4A 9427DDD6 7DDF86F6 2A25C23D 6B4DC2DA FB5DA5C1 AF6EB831 66B5A1AD
7BCF1BF3 D9E224D3 99726F2C 1029B974 BB250B9B 80B55CA3 C5F3BE52 CF329F9A
85BC49AC DB1F3AF9 692CFD06 EF3F5FCF AA97A405 939CE6D4 BCF6D944 CAB73D15
A25C96A9 211A2674 65FF00F7 22389311 DE2E4AAC 3EA14840 570AD00A 305B5021
BD2D06B2 A1492311 45843501 4B000520 A804C3C6 E34D0819 D63EF32F 0D45DDC8
5D4B289C 268DE494 EEB67392 1137A2B6 6398E8CD C6EF5FC6 991AB5F6 83AA3065
6DC3D227 D409A5AC DA562680 DC4DB4ED BA9D8C56 67FBEFAE A01D2582 089CC25F
5A29819A 7633F75F 8E7E88A1 15A5CAC7 269BD75A CC9F98C7 0B54544C 345E2E5B
C8CA9621 844687AB 76513DC1 7437866D 1B86F4B1 078DF15A C65A61E6 7A11F127
7A9C3F25 8258C7BB E970D09E 55CC13F9 7682A668 95449FD7 AAD88046 A9941A85
51CBDDC9 E6E1594C 8E5F11DA D627EE78 A70EFA81 9E55585A CE1C4157 6326636F
EA2A6642 62B2B4E6 81F6CAFE 36D3C8B8 99E73D73 A9FD1495 C51C1BA8 594A84E1
61CA2A04 49ACF03B 32A0C70A 44AF6674 ACDDA293 801B25B5 913EAEC9 B7458DB9
518A111D 85DC7E0C DACD07B6 EC9AE135 237C81CA 09885C05 005C3051 AB2584C2
65B648E4 6A6B05C6 67A2B4AA 6788E762 6BD820CE 526AAA55 6BCDD7FC 5ED5057F
D09A4D5E A3B9B189 EE022F52 9370DFB5 657E2532 1389F5D0 8F2628EE 843024BC
AEA34501 76A63198 6E332ADE 9F2B5437 038DA882 4669AE81 1AECF778 512911F6
557B0311 E956B2EC AD5D3D9D 887B36E6 DCD6E8BC C8731EC5 B03E5353 61461B5B
73272F19 0A10B67A 80DF3C91 AE157B7D E7FD9689 79AC9FFB 97D507A2 29EB6AE3
DADA7E88 BB476A9D D28E0528 9C46D8C5 2FF4A51E D9B53348 4B029883 A0B2E167
84E97516 2406D4C0 7B03EA21 C410AD08 22F173EC A70D40BB 8B2E0A34 876A40B7
01A87710 71CC88E7 DEACA83D 89307793 A941B9AE 5BA60A51 564BA8F4 5FF59B6F
DEA5A25A 3F9129E2 7CBD9EED 7B54C0E0 9C7F876A 30EF3D03 EFA3E944 12E72D5E
63E154C1 3A02AA00 0A2008C2 ADFC5ECF 7A5A7682 885DA885 9D87EA74 61981BF3
E4145C45 A6A4526C 565BAB29 525EE8AD 9D759BCA B6C0BF47 25C07932 F1CE55BF
6ACD8E45 4DDA7C50 85F816F4 AD59ECE5 F835E883 FC79F632 E75948BA C5E82749
A97DF11F BE7C9A2A 423F99DC 9AF457AC 3CB5E52C 6F4A3297 5E8C5CB2 88996218
F35E8ADA 053DF16F 8FB3735E C4EA4764 5746E588 4DEAE10D 38BF66F5 1ED854C1
4CB72761 5DE2FDEF A53EDFAD C0DB3A62 4B0BCB4D 3547B75A 0A4BE5F8 3CA518FF
0079C705 43A5F5B0 ED7F55FF 00EB8A91 A6FEE41B 1D47FDA3 2E12527C 44353D43
188C5EA3 3F95C91E 8429C335 9151856C 55C08211 23C79A05 BC21D3DA 23F80E6A
12CA14C6 8A0CCE92 08AD4658 004110F2 69137FAE 00F5D2F3 FBA40E62 716D89D0
DC05E0FD 6CB32501 D6DDC4D0 854BB79B C2C34EC3 FF00273B 0D6686D8 9CBDCD55
8608E9B2 60E67A51 795B24D2 7476A065 E51D88F9 4E30A8BC 15709C04 31575122
34868107 3CE9806A 1213A806 70907D5A 422512A8 B1985EFF 0064CC94 DE5C7734
34AAA21C D36AAAFB E7F273D1 B15136BB 725B4D5E F87F776F BF79BFBE 6DF9D3A8
35862DB2 D6B7B6EF B803AF47 434D6D5C CD7E3163 3BC616A8 B63443C6 B5A44CB7
55CD4DE8 2F5E44F9 EE65270D 6846DDD5 DF2A354B 16B63361 6C6AA22A 88C2AACF
EB5B8690 51A6AC52 45AAC299 25CA9015 D78A24E2 B5D27BCF 6B3FE338 4188F2B0
D76054AD 6DF50F62 C16DC1CA A0FF000F C8ADC7DC 6AC5DEFC 0F94DC36 2571422C
4DC65BD8 F399D63F 81EF439F 58A45A00 5E235C4F 9FDDC9E0 8BBA6F05 2093E65E
6766DDF8 567A8C08 88F4A23F FBADDA54 10D00052 00411067 2CDFDEF0 AAF767A9
E2315EA3 BAB38C5B 80A7CF3C 3FDA157D 91CDD75D 0C78660D 875F2A3C 33F36766
59714ACB A82E6928 73CB83E9 E5F93FF8 D98BF1A4 EDC94475 6DE39773 A7C165DB
60943ACD 64362FBD 10082EEB A7455ADC EE496687 F90595F1 CE19F149 2754A747
1ACE3A36 E9E66C05 F98C3D69 50EFF289 7D94151D 91ECD7A6 15B86347 7FDD4638
3DA81EAA DB3EC95B 7F645046 122205BA A981E0F5 A40932E4 D0052151 3EA80434
3DFAA44B 20D6FCA4 00F6430C D44D0CE5 9DDEC4C0 94FB6DA9 EEE86C5A D9A3DD62
F0FB6BB2 A3291752 29C595AD BDFAC29D EFDEC472 92206676 2DABA021 08A000A4
00A50015 7CA4005B D0BE7AF5 8965E629 30A4C2DD 6C132C4D 2C995A83 B16F6D1D
F4D65EA4 FBD8F53B A393843D 9446F65F 3686EFE2 4D9F244C 79AD5C49 11D7696D
12370281 FC5451F9 3B3393B6 994A896E F5BF4E47 41197853 9CCE9B78 E159D824
A0944D6D 3E71BC35 A44E8819 DE7A272E 442EEA32 22AA0105 94DB1EB2 FB3BFD9F
72EE9C3D BE144AF0 14E46486 C27492C0 66948055 146943A0 7EA9BEA7 CAA95A1F
394A3488 7D0D0566 769817B4 49083F92 85403F92 8D2018C8 6A135000 958BF5DD
BAF2A4EC 00A89CA5 C0A58624 05024A40 BA30190C 5ACC022F A4DFEE82 8B6CDE6A
2025000A 901A7B29 F4AB9237 85645A5A A82CF797 9CEA9455 CE14CA79 70815159
CE14A585 44D8590E BF553769 558B38CE 0F9F38C9 159037B3 41A815C5 4338EE17
D5E0D9A8 46FBF37F B6D3908B FDED6F7A 0AC59B85 80E49608 EEF04180 79DF69CF
9282FD26 2AB8019D 99E3EF83 DED54F9A 2FD9057A ACC69DAD 807C5A86 86864A36
818EA2C4 6C5B4A44 36BCF5AC 3B5E625E 904BB567 C1245BF9 82AC71A7 E18FAF46
F21F47BA 6E0BEC47 DD5348B9 E39513A5 4CC55C30 6EFC9B6F C9151A79 031BF20E
8620CD96 8F5D1056 710FDA21 E25CBDD4 E3B518BF CB364D0F 9269D4DF F922D77E
7BFF00FB BA74030C B536EFB5 A5F8BFA6 A29B0985 87E8F22E EB3BF5BF C6923788
99E74CFB B7553BF1 0FC31DDE 0019E64B 47BFADCA 74DF1D35 DE91891F FA86617E
EFE35EC7 F757D076 67229E1F 4250F737 D632766A CEA06E6F 8A751B7C B60DDB5D
7DAD226B 847C57E8 AAD944B2 89855CE6 1382000A 400A2008 C141E938 4310C311
C56C1E1E 9430F014 04D1C133 DB5EEA9D 3D56CCF7 8F5FA576 259BC5F2 F46FA6A2
6C8E11BA 3ADDC667 484F362F 4D166F1B AAB0C8E7 3FC36DDE 1259DC4C 6361CC0C
EF9FEBC5 F7670B5E 5E8D9884 7E859F3D 3725E813 5EC38D9D FB5896C5 93A8466D
8864EAE8 F71DB9AD 9BB2DA84 56EE5BEC 04EF3841 0088E7A6 0076C43D 108C8DAF
A16500AD 135C0034 7FA608E5 A70D3037 BE4530F3 0EC33591 B872EDA6 FE646AE8
394CE6B6 A99BC2EC D9CF9CB8 A1AEE85C 11052005 20A800A4 00A50082 000AD081
53636843 05B82FAF 0D969169 FB1E428B 15885D71 0F7A67F5 5B92F4AA C5CDF7DA
374FDE84 E82753DB A2034145 B7332357 4C1DE6F1 D8560F18 F0C96FFF 00274B5E
C470742D 4A291595 88F0A436 98405986 2B00335C A684D622 48206C6E 63508332
5A61A1B3 BAF06195 62E968D7 EF860EAA A81999A1 7F98B145 F422402F DAAB3EBB
D78611EC A14A124B 21410005 10045030 118691A6 931F91D4 CB65C74A 59508605
4B809208 4B08F789 860BD0CF 921023B5 A474DD9A 7E0495F8 F4EFDF26 AE29B5B4
863EEFA0 BCD90B52 70A81821 925F4A12 979A2086 AE40F458 866F6753 150D3972
BC613D9F D6EFFA8F B66ACF8C 4D8B0175 9309C925 91C5B765 5878DC9E 04E04F9F
A23AB1E8 1353CA47 ED735377 2C92D113 65533258 36F1D215 1A033EE9 F95A0202
D7E52CFD DFD6CD04 FF0047F7 5F9A311A 24F6818D 5C4C13D4 F2EFA382 628ECCF9
6C712B1F F64107F0 BF8E4D99 3F49E75D D34EF99E 3994F21B 9E859CB8 89286EDD
350A5103 D99CF2BD F77CCB87 0ED6CA56 1F912B25 836CB243 0C7649D3 A2EAB319
97B29E55 ECAC4D15 21C6BF2A 793310BD 352DB888 BC5D269D 03D38975 D5701A86
FCDA6C52 004100A0 009EDAFC EE22FF00 47759953 FE918579 CCD1B2B3 809A3780
29F1BBDC F6706625 661064E4 805CA760 286C2403 ACEE305B 00A6ADCD 9D7B5061
63AF1745 D8316429 40EFC1E7 51664C9C F15A6058 8CD6ED15 2D0A5419 4AC9461F
E859390D 4CFCEB3D 81D19C7D ADC9A680 FC651373 DB153666 DB59468C C67E6A86
8BC5BCE9 6639FEF1 BB5C6616 B7C87BC8 AC8D5A72 AC949A7B 7FB370C4 47EAB5AE
66C87681 EA4C86E5 1DFF00C8 65518C66 0A518C04 37045000 B3ED0891 6D89D0F1
826A308B 220968DE 5C0062A2 6873C305 33407D2A A6F4507D 9D0EA271 F9A579E0
16513765 134B0005 20A80082 000A400A 500A2008 A0008200 0AB0AB97 1E391FCA
AA009C5C 01101FE1 50B44289 4580E42A 890173DD DA111A80 B3855588 4BE75929
02CABE7B 51AA8118 949E0421 4D493360 9A214C8D 86AB01EB B4154710 5E5BC10C
E1B51547 30A4511A 13C86A10 C470DEDF 0D436822 EAEE49C5 449CA67E 5B74A311
1643EE23 8565E58D 7562B484 78DB744B 0685E813 E8605066 4E30AF47 9A10930A
24C03D10 5F02820A 443A7A16 84704588 27A91416 E5DD56F1 035A912F C80A2D94
B6871BFF 003047EA 5A5182C5 561DC54C 492038D5 50F8B025 12C7EB13 BBF6BF4B
9FA8448A 7FB22CFD CDFF00FD 557A7BB2 C91797BD 68CB9BFF 00FB4BDB 3BF11391
28C1CFAE F5F1FD26 A6D34A88 6E22AB19 D606DFAD 82FC411E FE1B3202 E2B6CA6A
E4989529 95E8A3AC 0EE3FE49 5AC41B47 9F13F00B 43456466 28D93C5E EAB685B9
B07BA804 886B55CD 1AA40682 4A13AAB9 A989885B B0F7E3FD 30AA4FDA 82A4CC86
7E17E5A8 432108A0 0069AD31 C3AA2849 D94847E5 5D6E0173 D60342E4 A244B242
F67F2958 62483735 7C1B8C6C B24D981B 51035268 97166E92 1304A16B EF42E9E2
E181FD4F 7A375415 3AA4F261 34CF0784 F3A1E2F5 5BF2742E BDC0C72C 15FF0010
4AF42361 F5219E27 F2ED79EF DF6DC348 CDDC69EF 92F35D16 7DDF5A1C CA5F8837
817FF66E 73BCA504 29CB0594 93DFAD7E 51C79C80 4DE87DCE 1F177DDB 27933F23
E284E35E 66336257 EA8D69B4 5AF77C1C E15D53E7 21911BCF 532C6610 8F2A0CD2
12889208 C935007E C11506B1 4F6A1214 0A409F17 2D188D68 963284EF FF00152D
5BC89565 03BE4B1B 490C8210 82108600 0A200821 08A000A5 0082000A 2008A000
3B16FF00 F100B726 6AB72052 C937950C 46637E5B 4548B551 98202D20 60512AD2
51D4C608 AB4AC651 185076BF 5D2B8222 C6A140F3 5B14343E BF2A5A29 7C452941
00D7A73D 00BD5C03 B14D0523 D05BAA91 A2648B51 D0186687 7C8DE3F5 1E5311A7
88E8ACA3 626088A5 6E1162ED 5D4208F8 6D08F0E6 4DC0F6BF 4B0CD53A DBB20817
A8005000 4100BA04 98315A84 21E8A204 59E50A29 5B2F983A FF0096A7 F1A49E7A
B27121DB D92FFC2F 4FA6375A ACB201B2 F81EAA1B 44B9FCA4 B980152D 4A9026EF
4508D38E 0176A900 DCEB3923 40CE5B5D 94868668 6449EE94 2682BEB3 882B5026
4037E080 BA98AA12 3DFCFDA4 2D9AC2CB 60E3DE37 2995A81E F4F09F6D C74A319F
E559D94C 43DA4313 1BA800D4 385A132A E91A7ADA FCAFFA69 14D541A6 2FEE2566
426D3514 D8BEC87D 279A711B 1AC107FE 57357CA6 77110D1C F6D1AB16 F3A33F5E
732290B2 0391A80A 31D61321 5204A8AB D8CBD4F0 993D86DA 8EFC1A15 76F3D56E
18045000 82508BE5 D400E686 A930FD84 EBE765F3 EEA87551 ECC98764 AC7D7FEA
033A097A A9FC89C4 9CAB3CD4 09B2A9C6 0CB8CE19 EB230A1F 953F4BB6 214BF352
6DF39DBA F79025C2 7FCAC4CC BD1B42D4 DBF4BCD5 456F5398 D49BE86B 82B47211
CD380D35 297F44A6 987FD7AD 3E4E1BD9 7897B8DF CE15AC61 B16F8C74 CF4B41DF
C9283CD4 CE83BF4F 5D626122 EF1D7B4F AA6FC0EA 15F9AD38 F1A2E757 E50C9384
FB4BFF00 9E89BA6F 300BFBAD D8F85982 45204CF2 F7B21C5E 63A37E57 A62A6855
51044108 A4064100 05200520 0D100490 045000D2 005200D2 00410005 406BFDBE
2D39204D 5F48008A 83A6CDB0 194FCA90 46C94D21 64DFA61D 1AD4BA46 406FCD8A
512142D8 7DE05425 10360A70 679A8269 F25F859A 462BA429 445C0062 82012889
4C5C0064 658A360A 4F2A04D5 F11FFEA2 A7DA467B A282565A 9299A984 5BCC22D4
2A4A3404 DDC460C6 A0D3A6A8 91AF3500 A50063A9 E2105EC9 05000382 10968015
A9000926 4A2009E0 7C4112C9 0FF336CB 6F519EC7 15C2AD01 54F9AB33 C5E95D8D
39E36E9E 32F98033 A8AD43EE A8461984 2DF7BCE3 A2C52502 1BCEB212 98A92471
430CCCF3 436EAB6B 54693AF8 DB3627B4 805B9942 BB540401 EC5B4AD0 22354B9F
F6753D5A C6EF0166 FABCC566 4664F3EE 5DCD466D 7D66E1F0 A4993D8B 85CBBB76
F4DD6DF1 90301567 E8863671 5E410058 64839E24 205ACDB7 DA844FDA 9AD3B498
FCD42FE9 B21D9866 CFC04218 B1AD8B42 CACE66B3 A80991C4 406A3068 9610B555
7C8DF75A B6342EA2 72F3E518 260550B9 B564D908 BFBABEA4 1E379B0B F9D42DCA
C7BA8337 32F0A934 ED2B6E23 7EF1769A 5AFBA250 246626F5 AE2FDDD0 FB47A725
27E036F2 5B46A471 0ACADC22 76ACBDF2 11AA3E0F B923DD06 26443C32 ADDAC00C
D9C79963 A747FA64 A3B9015D 08E08210 07861082 000A400A 2008A000 82108210
4D002510 82006A10 04500041 00052005 200D1004 50004100 051004E0 F4CB8220
CF5DFC11 49FBA87B 2162486F CACE501C 2D0B3391 826C3D75 212E3517 DCE668E3
BC8F58C4 4C9447E3 7EDBD413 90A10D30 B33582A9 F05F5721 52F88A42 C4351096
004980C5 A0368175 A80A32BD A81A6920 EEA4FC26 19665DF3 779E95D4 880D1CCF
B2E94EE0 200A301F 0A29E3A2 0C761DA6 0C23B725 0B4C6E89 D06A3017 04B0AD08
C0A000A7 572E099C 79D1A290 71515232 71950552 A44F03BD A112E25F C1CF09E7
479E2D6B 2E5EA22C 0F7AE273 6DAB4F91 DA2672FB 834B5BF2 7BFA06B2 F246E225
B9A6A07A B1A715CE 3449F5DE 40AF45BF 015E71DE 1F2EF846 2C4C673C 773E55D2
001D54B2 C56C445D 897C264A 80E6EF0E 225B6A96 3152EF94 10EA5B1B 64FDACA3
759088CD 1D16C8BA 3480FDBC 6F43A50E E5281502 6E2B6F26 0BEBC6B3 EB5FF4B2
B0F08CEF A1B880F8 E8D9AA48 3777945E 1BF5E4B2 4D6ADC1D B774C6BD 49EFFE53
584766BC 8FEA2664 1FA80673 436C93D4 02025D84 BF915FDA 86E68389 98E6DC6D
BB97B89B A6B21595 3719272F D05B59CC 986D0A90 453D010E 86015F6A 30BB4585
C0BA5DFE 75C4BE54 EE3C8EB2 C96E917B DA23C8B3 FBA965FA 24E9881D 415CA685
4B009B0A 400A400A 500A400A 2008A000 A4001504 50004100 05100450 00411026
ACF023E4 A7459C8D 80D167D9 EB598440 4A402ED1 3CE84BEA 40E535F8 1EAA003C
05306961 E6B8B489 B0F59D2D 09B881F2 12F10341 49087A38 C4B03F65 8056F22E
DA0948E4 A18AD081 7AF8D627 8B913823 734142BC 98D478DB C6A83274 2FBDA80D
441B3862 90CAED28 C22A1F95 2165EFA1 4D2BDCFB AFA9AC44 2BE4D094 32670D10
F85A00E2 1D046050 00E25002 D0496C80 C44703C2 BD7BFCFC 5E954B50 DF9D0E75
1330795A 1298199E 8F0D84EC 009E4540 C7F767CA 60FEF1DD 2A3CC0FA 5A0072E1
490C10A5 06C1A70D 20F03604 B0FDED09 9C3AE15B 4029676F 9A4046B6 F92FACBB
076C8ADA D168E71F 5C96DE34 897BD0D9 CBF73C8B 6DE55D39 37A491C4 07A3342F
5E171835 91A62493 25A0D15B CDE65200 41105A7A AB585C37 45443B94 B64928A6
08314310 413A135D 4C8A9933 7DC5B453 D681B145 3E6BB269 2A4D8C39 E95D0033
E15F5411 A3A94A30 3A9FB1A8 8121D2AB 139C9A7E 0B21CEF1 3C5CF403 EA75594A
88768ADA 413530E3 0F789F58 47350D1D 11962D97 73340D1F 7515E522 66FB2D8B
CA46912E 09900970 C3350BAC FA47F401 1FB564F9 1709361F DA40C471 A8182158
819A105F 22F18434 1C4A129E D89DDE45 22140478 6F9A1124 4FC8A18B D9198D69
BC6E3BF8 BD5ECAAE CF64C2B4 99C38A98 2AC9E633 B053ED15 C5C8A11D 61280978
051004D0 0A243581 49C08200 0A200871 5B00A082 10170460 AD40856B 38CCE35D
D08D54FD 2B7C9E85 371B80D2 32D18A6F C82A2D00 385EC165 7702CCFB F8C69BCE
B6AA696C 88FAA0EE A61B611E 1EBA1161 6F6D2241 D200F39E A8093141 001EA1FA
16540C9A 174D6D1B 43B234B6 7EF9DB7B 51DBCE22 B38B4031 4165CD3A 3A365186
8074D182 20D4CF25 0B78FB00 452A88A3 4FBA1127 FD5EC16D 23423B89 FF00DB95
A6B25195 A4A84D2B 5CAAEF6E 3B9942B9 979A42D5 4B00DD4B 00053028 2D101C17
8470C826 09906B18 19DE7CA4 0AF2B5F9 43F75B85 948529F6 C965A780 E67E6A13
EB06D39A 8D19E3A4 A7080636 38C440BD 5C0073F6 410CD600 5230D108 B8FCA406
647D611F 36E2338E A2DFC989 CE7C7CF7 E69CEF3B F65BF41B 09A6125D DA2AE590
37D4164E 7C1657B4 17526A8F DF733D1A B2A43CC4 C8D22270 A809E14B 08FC4DD2
F35EAA7D 55A2D9D0 1559D532 A000E9BD 98A2464B 302631BE C5C2286C B6232408
F0F6A526 64C42CAB 2AC6C52D 84BFE3B3 DA56C528 7F53EC04 C9525020 8AFE0411
1FBB5AF5 04F1BB16 5C04F0BE DC2264A1 4A32A3AE 7DC87C3D BF5B5D90 A94CBCF3
D24749A6 5CE28F6D 9B52B111 16DE174B F7A4A410 261BD2F2 EDCFBAD5 48D3656A
2EE15012 21109E25 12178436 78418027 CF5D02F3 DA237454 6D09D03F 69E39020
AA82442C 44B27F58 03B2DDE8 F3A0B437 2A89A915 FF006489 F7473DAA C86E66DD
FC6EFB0B DA1EE025 A85D0A8C CD55226C A8404100 AE065202 2189D00A 16045000
D22041D2 0083A004 83C04F4A 224E63F9 3F3DF8A6 5C4DCE40 EB46130F F3A4E895
13C0BFE4 87546EBA 095649BF EB5FB801 AE1951F6 6416AF65 4FB89865 5D97DA4A
50897C53 985209B2 02D1A800 67D084A0 92003D45 5093BA87 69480BBF DE54D418
69CB8889 CFBCA958 B33127B2 BA51593B A0C2360D 6519AA43 56D68267 AF75043C
5B0261F2 DBC4545D 9EC56C34 0C4A4331 E082988A BD97676A AD271106 73519930
8A002009 B004C072 302DA9D1 88A15E71 ED4B4EA2 4CF7C6F7 1E0055B7 4313E37D
F38ACF9A BF8308D7 EAC44741 DF89F068 3FBCF6BB 9F45AB77 30D45780 B1EFA5D6
E35FBCCE 46549838 4E173FA0 FC694C98 594F0A34 87CEA608 E6ED9208 DB8A81B9
D80073E3 2A0882FC 8AAACF0B F08F5157 24F8279B C47F194A BFCCD447 851A4968
410C8240 F52B4DC7 4A2F66B1 2E327A5A 660EB2A1 248B84A0 00059610 32C03CA8
15CD7673 02AD8D4F FAD46123 89A08211 43332BF1 A6790153 169BCDB2 D82C4C69
651B4209 25119917 3C51CFBA EA608CD4 422E0E7A 7F5851E7 21951BC5 643696C8
25E355DE 84808BAA 10C50508 66675D80 87A76500 AD805C80 11FCC4B9 819ADEE5
C8D46864 849E5C23 B492FE6D 3B112365 26525122 E1CB2500 DC00F302 4D08E049
002A2894 8B7C3F4A 84999FAB 470A56D4 6431BB07 DA9AA43C 54C019D5 5061D64E
D22FE9D7 B29232A4 367723F6 140CA68A E8464217 A585DC11 4DC8D8AF 55226835
81053069 18D00A50 0A400A26 0520A800 074A124F 48520342 74923DA8 B900B989
3D04A070 2D09BC92 C315F849 E75379B2 46986FFC EE3D6F04 026996BD B0F46903
9136CEBD 12E38BCA 4D6CA86B 36DA9603 564B5198 5249F1D2 4612BD96 00DF4B08
E4501319 0D50B519 FC1ED511 43985179 AF3EEFDE 45EF1171 AB759330 5C84817B
B46B5EBA 0D7A0F69 14450083 0AB08A27 B2B01126 559A5240 F96748C6 651CBEA5
803B7153 3942E75E E5CA50C1 CA80A51F F778A95B 84BA01B9 9AB17AF1 A45B4040
F1E8A60C 3304A013 54087315 06009600 AE007781 9A814F3E 1A1C6F4A 224D77E6
CB638165 E4A9F066 C5749571 388F65E0 63324993 4180F503 3E6DE815 80C1350B
CCBCBDDC FF00BBF4 ABF3A5AE 7AE45C2A 59C61382 000A2008 2108A000 8EB6DC02
F56C89A0 4B08C9D7 AD18C1DF 7FCFC75B A7456B43 A25D084B 00054019 8C355AE2
0553D2E2 7375420E 942A5BCC 14F9A7F3 D78F75D4 D3D80655 5BDFDD4F E7D9B296
B600667F 516E8998 5C032108 A1A26872 4300CC5D 10712DCA 70C2895A 16415343
9F38F82E EAA9D1D8 2276FA60 7B82CB59 EC66B484 70D28478 2D000A30 F65A0271
830A70C8 674A1275 A824F17F 979A4279 101BA984 64D55E9A D82BFB67 AB9EB434
4434F64C 285BE95C 0C421EAA 02B50137 B581C809 060545A4 DD86C263 7E5B3031
F9A40050 00410005 128281AE 04820A34 8A014B08 A400A506 D202A006 410860B3
0D50BD97 B734D126 7D271907 E093CA63 42DC7B9F D52DAB4A 63C5680B 4669BB26
1B011A37 84700550 75D9116B 7FDA3A10 6970DD2E 2B1164BE FEA9ED62 19122B2E
3EEF3075 F348B0CF A17E0261 1819C5BD 903A7F51 07D91891 F4B05C7F 5C676A15
D000D3B1 76A4C222 4E23B2D7 D7B27101 8469E6C9 45441A09 FF00BA9E D4991B4E
0113AD29 B0099FB4 E859C50C 65479D4F DA3982E8 89503021 08610821 08A000A5
0005870A 346D3435 16391A8A 0BF0F119 9AC27B41 9F1EFBA3 FC09B861 24C16562
66671A03 F5DDF2E5 5F5DA4D3 B464D7E6 1382000A 2008A000 A4008230 1A2ECB3E
134D0827 2D42D6CD 2AADFD5E BE75E4C3 5C3AD9BE DCA75098 04B0A800 13045000
94C06831 A9658B71 7135F7EE A87C8DA0 3CEB5D6F F9C6256F C73A5497 835386D0
4B8B50B2 580C181E 3C458D19 9D4A3033 45206608 816C9A12 0955C858 EA25A31D
35B0514A AB3FEBC4 17B58227 69A8685B 04B57B93 C5A765D2 0185DC46 94026F4A
029E8416 04501360 D79600CE 26099810 9A10BCE8 59029396 21B328CB 3E411C32
234485E6 71968CEA 5B1B4B60 C517A460 C8FAEBAB C058DD04 B0AB09E0 35E874A5
06F2E58B AF0D94B0 5222EE74 A836B114 14047805 20A824A0 00A504A3 08B104E0
0A200851 7143089B D1293652 3B4FCAC5 0C8B40B7 15B6528B 1936D684 814CD64D
91B6FACE 41D5F84E B29E85AD 2E8EA5E5 B689CCE7 00814A23 91E48DAE 2E085CD2
DC772AD8 B575DD71 A53E290B 88E6E3DF 96308459 DAF73E8E 652B8F14 A9518C66
D200B159 B73D5E20 5B2F9F69 BD795BD6 B464C5C4 A9AE8149 10D2FBAF 4E5AD208
FB73A47E 88AC2AD7 F9E223B2 E525C6F2 AD3BADF8 66B2D0BF 74BF439F 244CD612
53964174 049004B0 04500052 00D20082 644F0A70 9FD2DF3D B499A02E 9F21256E
04B39C59 86AB10FF 0023F8BB 350AC5B8 F7A6BA80 E63FBD22 8A368281 49004B00
05100428 086108A0 00EDFA83 19821077 40C14FAA 5B2C6C56 5E0D8B1E A7A0AE7A
F4494AA8 578A2C08 A0008200 0A2008A0 0069BDDF 56922062 292B8811 90A4D7FD
EC5B0D34 6D2F569A 6F84C2F2 BDEED3A6 D729B0D0 BFC67EEF A555B743 40E7C7FB
FDAA5E04 94D0CD0B C95F9F17 FC43CE68 34CBE96A B800AC00 1504F0DE 8450D8CB
ABC2508B 4E4065C3 4A29A018 F08C4A12 875C020B 3AD6200B FE6909E0 2E4A241F
A8607241 9CB17E64 3A79CF50 7502AC2B D513F6DD 1F9EA56C 9986C661 3D840C4F
E15BE496 507CC545 440D9AB5 9198C420 08C00D20 38C43448 49A02CCF 4A05235B
60385820 41251096 80A506D2 00D202A0 0045C8F9 AB92C5B0 20ECF42E 2E3B7E04
F451C9E3 5BC1CE90 6C8D74E4 B2D385A8 1E89CFAC A36DBD41 D57BF7DD 461FA8CC
392337EF C9CC592B 8FA48E94 7EF369E3 A584862D 6B5786EF E5EB59BC 838DEC44
3A819FFB A28C39B3 25490E52 571588CC ACAE823B 76E26C7C A6AC1511 D37CC2F4
5B44D422 754BFF00 F85BBAF9 2CC0DB42 9E718F65 A0713392 D33E0B0C 2E7B456C
2372147F 9A8D7094 67CCBB70 B02408AC 551B3486 20B714BF 5F9A690C D5B95A16
1199DA6D AB405203 A0009200 1EA80063 0D20CE0A 3613C424 054019A8 24D27485
09D40512 8D4A3028 2E09B05E 1D07A106 C0E3DE53 B24165B6 03FB7CA8 5D45D1AC
46362D5B 81498092 C8821017 04502041 25000AD0 1EE507A8 7D71B6F0 3069DA3E
A43E1B99 42FA72FD EA4BA832 0A2008A0 0082000A 20082108 A00027D1 CA9210D6
EBDE4623 1ADA4852 00410005 10045000 41000510 04E0F4A4 04126A20 6C04BE04
3127DBB2 03F17E4D 2F29F2AD F79D3A09 24D7BAAD F9023CDE D4DE743B 0472D9B2
777A9C01 F0EDF9A5 A510025B 39FB51C3 8C449C26 83CDFF00 59F44B20 CC177471
DDF5EC1B 27C629F5 A618917F D3BEAA70 1475BC12 33AD5B33 32AA0149 00051004
500072A6 36911434 6D09E00A 19861096 00051004 A083DE84 90295E3D 0A5C7422
20ACA6D2 0DA8FC8D A05C5919 D1E7EEB2 B28046B8 BF2BA22A 2592F039 5AC6056A
254D4904 F6D18B6A 20DFED49 1077F49C 26A7A06C 1AC29B2F D7E759EC 6636FD6B
664FEAAE B56145DA 04150461 FF005E79 1E855F43 B5512755 8BBEA588 C40D8449
0C82000A 406A3080 6A25621B F1FBCFA2 760B224D 5BFC1199 7EDA5780 A4008200
D182000A 50704108 09250B5C AD92C0F8 51446932 A5CC290C 51193268 9600AF04
E34A70C0 A7260841 474A4075 11FEE4A3 5D1C8DC0 29135C67 61824A22 7407755A
A4045445 2005200D 200D1004 71E2F6F7 28F1EC1B 58E25E41 B207A000 A4008200
0A200861 08A00013 04500041 081D3EAC F55A2623 B8651F01 AC008200 0A2008A0
00821082 000A5041 083504D0 6A3059A8 0D40F9B7 5A8458E5 FB73A440 A51162B2
B10BE121 E2BC3567 12FD1484 44B85C84 B0DC00A3 09E093BE AD095870 5E0A54B3
18A50CDD B0F6C224 FDB63D96 CDCC9A73 59CF51CA E6405306 41000520 05134B6C
523042D1 92004B21 820A504A 10045000 020AB009 34305FA7 6CD41A71 25DC7414
85B714F0 A0BCCFF5 5802A1A7 676AA854 960F005C 962119A5 5B108220 45F89751
02A672EE 3A6CEC50 27E604FF 000EAE50 128133FF 00DA538E 34161935 813511D6
74EE719E 855FD2C6 55A64D20 99220510 04500041 0CC83D92 61C2F37D 45F40662
79EE6D15 91447D04 680D1004 50004100 4B000540 885D6340 41C0A9E1 59C02807
B22374A8 09E15002 C1338434 9F5F4A10 046C2689 41EE2A7C 53DB6380 BAA54941
00051004 28086118 9804C06A 05052005 10045000 41000520 0D100450 00410005
5089E75E 660C46BA A88BC868 892808A0 0082000A 2008A000 A400A500 82108200
0A500A90 30A72D0B 61123281 CA995218 95003ADA 20F1DC02 A1928D34 C8BADD8A
5E11F1AD 3EAF3D6F C6C224F6 F3AB8BDA 512358C0 46E859CA C5802931 122C6FBA
DB489C58 79C1A9FC AD01458E B646134B 0CA45685 D6302108 A0001996 00AF90A0
04410882 006A1004 60D01231 4466D150 D409A103 EA1E3FC8 753301FF 00694A60
2356D79A 6A2582AB DE83EA48 1553DBEA EEA41F05 5E064322 7B455EB6 99CCCCF5
7F690871 7F54D792 A632E05E 63AC0737 D50FA761 34A50049 088BF34D 65D3B454
E55F2B01 05840510 04500041 1011AA82 3B36CD6D 5700C75B 112059E6 20051004
B004E085 C94FF1D8 00F5680C 97F573A5 7E575417 F33BFBBD 2EF95B10 7AE4F71E
A6A6AAD1 9C063D9B DF3F1FDE 25BE028B BFBF1560 52142FAF A7452DF9 1340154F
6A40898A 01AE0087 41EA202D 109B6A13 A30D22B5 89FF001D AE065F30 A1BB6452
135800D2 02A00082 000A80AE A82108A0 0082000A 500A2008 A0008200 0A2008A0
00E9A068 03A70188 A20C8200 0A2008A0 00821082 1086000A 2008A000 82000A40
0A70F241 488564C6 C75B2071 CC3941CA 08E66E5F AA0B0064 4308F512 8AAB2044
5B7F5AEC 22466BF8 1FCA9F89 5847A0CB 1794A135 126B9F66 7C5BB58D 2554F91E
CAC8C83C 6DAB2E86 68669934 86000A20 08A000A7 0D22A419 611A69F2 2EC86525
B820AE42 4207B885 E5244211 3CDF1C15 67101BB3 82CF9ADD 08B935BF 4B005E6F
15843486 00556A40 B9454500 3CC446F2 8EA36D8A 56BD57FF 0074EA97 E68436FB
5A4312E9 06FF0069 59C53AB2 F44384E3 75DDA56C C264944E 6EAB2D0D 0B0A2008
D2FF00BC F22C1BAE A5927FDA 09580A09 0A200871 B6A71507 01D8BA04 8CA268D5
2BFF0065 B692D890 53111125 5B00BE04 612A5B7E A9FC8954 4F88927F EAE72694
69E3A293 08A7E8A2 4072A506 4148E2EE 8210FF00 BE228DDD A3150F1B 3A9114D8
CCF7DDEA ED79820B 5919423A 186D0A80 CCBCBE55 AC20D7AA F3A4E7DC 1830CD39
3DB0A58A 41536279 8FA73D5E 0485BF53 4E3E6ECF BAE38744 5463486C BDB76D9A
CD465704 D202A000 82000A20 0822AA82 82000A20 08A00082 10861082 1086000A
2008A000 2931DC02 52395A44 6465DA40 20086108 31410005 10049004 B004000A
20082108 6108A000 A4008210 97D18200 0A200841 05409A92 F5A7C50A E47B30DB
56CE9C1B 2303CACE 847FBF49 2AD523F9 AF7A702D 6BA5E82C D39D1608 0392AA26
1B654B81 05100450 00F2E349 00DE4900 1A92C03B A0321FED 3BA7A04C FB36D1E9
3AAD21F4 F67059CF 55B9D90C 5BA94C34 AB2D10D0 03B10478 0E36A900 2313580A
80AB47AA 818B3E2D 0911EE04 B3558D90 DAEE2AE8 CDFEF314 059E6B4C 45699F4A
9F06A5AD 4329CD80 D4DA3CF7 CABA6F19 8E239032 2FE8ED5B 2A91D105 A09AEB09
E003AB57 41490879 EF954D41 65FEA508 4B21810A 263F04E0 C0EF5F63 1141EAF4
51176591 5113A963 3C61BC85 8C463177 AA88882A 48FBA4BB 8D54BFB6 D55B3889
712113C5 7F4239F6 5122D0CB 05205A02 60E14902 B17F5805 00C50520 7155AE17
24753023 AF452904 1DEF537D D4954188 4C2FF9BB 55AC08D4 39E14B86 20DA4BD8
CF439B09 31523877 06A2D72A 11A38D6C A33F95BF 04C20A55 BF0AA09C BB880BB2
1351F216 24B9AB53 D69418E8 B64B1B4B 0005020A 500A400A F0FF9D00 0000
        </binaryData>
      </image>
      <text name="B_2_SEC2" minWidowLines="1" templateSection="main">
        <textSettings spacing="0"/>
        <geometryInfo x="1.87500" y="0.18750" width="2.37500" height="0.25000"
        />
        <visualSettings fillBackgroundColor="r100g100b100"
         lineForegroundColor="r50g0b0"/>
        <textSegment>
          <font face="helvetica" size="14" bold="yes" underline="yes"
           textColor="r0g25b75"/>
          <string>
          <![CDATA[Capgemini India Pvt Ltd]]>
          </string>
        </textSegment>
      </text>
      <text name="B_PAGENUM1_SEC2" minWidowLines="1" templateSection="main">
        <textSettings justify="center" spacing="0"/>
        <geometryInfo x="6.87500" y="0.68750" width="0.93750" height="0.23962"
        />
        <textSegment>
          <font face="helvetica" size="8"/>
          <string>
          <![CDATA[Page &<PageNumber> of &<TotalPages>]]>
          </string>
        </textSegment>
      </text>
      <field name="F_DATE1_SEC2" source="CurrentDate" minWidowLines="1"
       formatMask="fmMonth DD, RRRR" spacing="0" alignment="center"
       templateSection="main">
        <font face="helvetica" size="9"/>
        <geometryInfo x="6.70825" y="0.25000" width="1.20837" height="0.16663"
        />
        <generalLayout horizontalElasticity="variable"/>
      </field>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#336699"/>
    <color index="191" displayName="TableHeading" value="#336699"/>
    <color index="192" displayName="TableCell" value="#e0f0ff"/>
    <color index="193" displayName="Totals" value="#c5e3ff"/>
  </colorPalette>
  <reportPrivate defaultReportType="tabBrkLeft" versionFlags2="0"
   templateName="C:\DevSuiteHome_1\reports\templates\chitra_grp.tdf"
   isCustomName="1"/>
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
