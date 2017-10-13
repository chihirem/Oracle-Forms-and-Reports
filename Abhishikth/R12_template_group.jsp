<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="R12_template_group" DTDVersion="9.0.2.0.10">
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
      <![CDATA[select * from emp,dept where emp.deptno = dept.deptno]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_DEPTNO1">
        <displayInfo x="1.04773" y="1.94995" width="1.90466" height="1.15942"
        />
        <dataItem name="DEPTNO1" oracleDatatype="number" columnOrder="19"
         width="22" defaultWidth="40000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Deptno1">
          <dataDescriptor expression="dept.DEPTNO"
           descriptiveExpression="DEPTNO" order="9" width="22" precision="2"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DNAME" datatype="vchar2" columnOrder="20" width="14"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Dname">
          <dataDescriptor expression="dept.DNAME"
           descriptiveExpression="DNAME" order="10" width="14"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="LOC" datatype="vchar2" columnOrder="21" width="13"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Loc">
          <dataDescriptor expression="dept.LOC" descriptiveExpression="LOC"
           order="11" width="13"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <summary name="SumSALPerDEPTNO1" source="SAL" function="sum"
         width="22" precision="7" scale="2" reset="G_DEPTNO1" compute="report"
         defaultWidth="90000" defaultHeight="10000" columnFlags="552"
         defaultLabel="Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="SumCOMMPerDEPTNO1" source="COMM" function="sum"
         width="22" precision="7" scale="2" reset="G_DEPTNO1" compute="report"
         defaultWidth="90000" defaultHeight="10000" columnFlags="552"
         defaultLabel="Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
      </group>
      <group name="G_EMPNO">
        <displayInfo x="1.37732" y="3.85938" width="1.24548" height="1.69922"
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
    <summary name="SumCOMMPerReport" source="COMM" function="sum" width="22"
     precision="7" scale="2" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_DEPTNO1_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.37500" height="0.56250"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_DEPTNO1" source="G_DEPTNO1"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.12500" width="7.37500"
           height="0.31250"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <frame name="M_G_EMPNO_GRPFR">
            <geometryInfo x="1.75000" y="0.12500" width="5.62500"
             height="0.31250"/>
            <generalLayout verticalElasticity="variable"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g100b100"/>
            <repeatingFrame name="R_G_EMPNO" source="G_EMPNO"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="1.75000" y="0.12500" width="5.62500"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableCell"/>
              <field name="F_EMPNO" source="EMPNO" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="7" textColor="r100g0b0"/>
                <geometryInfo x="1.75000" y="0.12500" width="0.68750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r100g25b100"/>
              </field>
              <field name="F_ENAME" source="ENAME" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="7"/>
                <geometryInfo x="2.43750" y="0.12500" width="0.50000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_JOB" source="JOB" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="helvetica" size="7"/>
                <geometryInfo x="2.93750" y="0.12500" width="0.50000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_MGR" source="MGR" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="helvetica" size="7" textColor="r100g0b0"/>
                <geometryInfo x="3.43750" y="0.12500" width="0.68750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r100g25b100"/>
              </field>
              <field name="F_HIREDATE" source="HIREDATE" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="7" textColor="darkgreen"/>
                <geometryInfo x="4.12500" y="0.12500" width="1.00000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r100g100b0"/>
              </field>
              <field name="F_SAL" source="SAL" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="helvetica" size="7" textColor="r100g0b0"/>
                <geometryInfo x="5.12500" y="0.12500" width="1.12500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r100g25b100"/>
              </field>
              <field name="F_COMM" source="COMM" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="helvetica" size="7" textColor="r100g0b0"/>
                <geometryInfo x="6.25000" y="0.12500" width="1.12500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r100g25b100"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_EMPNO_FTR">
              <geometryInfo x="1.75000" y="0.31250" width="5.62500"
               height="0.12500"/>
              <advancedLayout printObjectOnPage="lastPage"
               basePrintingOn="anchoringObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="Totals"/>
              <field name="F_SumSALPerDEPTNO1" source="SumSALPerDEPTNO1"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="7" bold="yes" textColor="magenta"
                />
                <geometryInfo x="5.12500" y="0.31250" width="1.12500"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r100g75b100"/>
              </field>
              <field name="F_SumCOMMPerDEPTNO1" source="SumCOMMPerDEPTNO1"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="7" bold="yes" textColor="magenta"
                />
                <geometryInfo x="6.25000" y="0.31250" width="1.12500"
                 height="0.12500"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r100g75b100"/>
              </field>
              <text name="B_Total_" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.75000" y="0.31250" width="0.31250"
                 height="0.12500"/>
                <visualSettings fillPattern="transparent"
                 fillBackgroundColor="r0g50b75"/>
                <textSegment>
                  <font face="helvetica" size="7" bold="yes"
                   textColor="r100g88b0"/>
                  <string>
                  <![CDATA[Total:]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <field name="F_DEPTNO1" source="DEPTNO1" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="7" bold="yes" textColor="r100g0b0"/>
            <geometryInfo x="0.00000" y="0.12500" width="0.50000"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r0g25b75"/>
          </field>
          <field name="F_DNAME" source="DNAME" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="7" bold="yes" textColor="TextColor"/>
            <geometryInfo x="0.50000" y="0.12500" width="0.62500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <field name="F_LOC" source="LOC" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="7" bold="yes" textColor="TextColor"/>
            <geometryInfo x="1.12500" y="0.12500" width="0.62500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_DEPTNO1_FTR">
          <geometryInfo x="0.00000" y="0.43750" width="7.37500"
           height="0.12500"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Totals"/>
          <field name="F_SumSALPerReport" source="SumSALPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="7" bold="yes" textColor="magenta"/>
            <geometryInfo x="5.12500" y="0.43750" width="1.12500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r0g75b75"/>
          </field>
          <field name="F_SumCOMMPerReport" source="SumCOMMPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="7" bold="yes" textColor="magenta"/>
            <geometryInfo x="6.25000" y="0.43750" width="1.12500"
             height="0.12500"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r0g75b75"/>
          </field>
          <text name="B_Total_1" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.43750" width="0.31250"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r0g50b75"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="r100g88b0"
              />
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
        </frame>
        <frame name="M_G_DEPTNO1_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="7.37500"
           height="0.12500"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_DEPTNO1" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.50000"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r0g0b75"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Deptno1]]>
              </string>
            </textSegment>
          </text>
          <text name="B_DNAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.50000" y="0.00000" width="0.62500"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Dname]]>
              </string>
            </textSegment>
          </text>
          <text name="B_LOC" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.12500" y="0.00000" width="0.62500"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Loc]]>
              </string>
            </textSegment>
          </text>
          <text name="B_EMPNO" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.75000" y="0.00000" width="0.68750"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g0b100"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="r0g25b100"
              />
              <string>
              <![CDATA[Empno]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ENAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.43750" y="0.00000" width="0.50000"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Ename]]>
              </string>
            </textSegment>
          </text>
          <text name="B_JOB" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.93750" y="0.00000" width="0.50000"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Job]]>
              </string>
            </textSegment>
          </text>
          <text name="B_MGR" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.43750" y="0.00000" width="0.68750"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g0b100"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="r0g25b100"
              />
              <string>
              <![CDATA[Mgr]]>
              </string>
            </textSegment>
          </text>
          <text name="B_HIREDATE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.12500" y="0.00000" width="1.00000"
             height="0.12500"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="r88g0b50"
              />
              <string>
              <![CDATA[Hiredate]]>
              </string>
            </textSegment>
          </text>
          <text name="B_SAL" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.12500" y="0.00000" width="1.12500"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g0b100"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="r0g25b100"
              />
              <string>
              <![CDATA[Sal]]>
              </string>
            </textSegment>
          </text>
          <text name="B_COMM" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="6.25000" y="0.00000" width="1.12500"
             height="0.12500"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g0b100"/>
            <textSegment>
              <font face="helvetica" size="7" bold="yes" textColor="r0g25b100"
              />
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
        <geometryInfo x="0.00000" y="0.00000" width="1.87500" height="0.56250"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.87500" y="0.56250"/>
          <point x="0.00000" y="0.00000"/>
          <point x="1.87500" y="0.56250"/>
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
00118020 85300230 00110010 11102011 10FFAD00 C0300000 10112011 00F3003C
EA384BA5 008281AE 0013C450 4A138681 4B004B00 2A086128 782581A0 26F1841A
4DC05722 7CA854F0 A560A309 A0920825 8105200D 10141404 50405850 50232419
348A000A 16045020 A0009200 35000A20 08218990 1412841A F7DA1350 30F07E04
60820149 4C4108A5 A0A00082 104D0882 82138414 04D05C13 B8143286 005C1350
20A04073 4180A506 41004980 A40AA004 41008B4A 10A860D2 00024A03 0A243D81
894A1004 6C0D84C9 3D01785A 00524098 4530A604 8201AD00 A400A208 D6943296
08499CA0 24819688 A400A440 52139084 404A1004 90C4400A 400A1404 78050505
1396C8A5 24A00057 30A000D7 054C5C84 580A368A 82A504D2 03D1047C 25814BAC
429A811F 841A4D41 D202A000 A5A0A000 82104D00 05100450 02A00641 002A095C
6A054998 A0009208 05128200 0A302F0A 14044C6A 202D000A 702510A2 08D600D2
03A009A0 00A50082 814B4141 00498082 01051292 0825104B 003542A4 26A04041
00052055 8082009A 1086814B 68410035 004A2025 814B4C63 18582364 0D200512
8201AD40 52005200 4100499C B1C4600D 124B0049 2141C0D6 40980448 0A600D02
0A200821 09908424 55004980 A400D712 5813B804 E00A1604 5000D200 D2306108
4125814B 0C82104D C0573061 2878A860 94251354 12F841A8 D1042C28 08051004
E00A2009 5002A01A 889680A5 06410807 0A1A8681 2510A208 A5445803 A0046389
484A1004 50200DA5 36712008 314F0A20 89900400 4108A500 92C05703 A0042028
7835105B 02520590 84140448 6A10C434 86005C23 30410005 10049045 029A1086
8149005B 32A026E0 4D002581 05050584 49004980 D6202189 486A2025 000A600D
10C41949 80928856 13908434 96888281 AD902118 90045C0A 34828105 20254282
104B4C41 004980D7 22586A10 A860820A 500A500A 2018B804 E00A1A96 00494CA3
18B8045C 4A308A8D 36583042 4A052A18 F84A85AE 545002A0 00C50505 A0906189
5C9A8149 21D21398 C414047C 2D10A6B4 A01A5000 D203A000 D602A004 419C31ED
892C2854 4A036A10 04900448 0A500A50 4A036A10 04E00A0A 0A2008A0 00D60221
895000D2 22643D01 59046319 12C42009 5020A006 41002581 05101414 AD09385B
02A036A0 008242A4 00A44063 89288948 4A1004D0 0A368601 35014980 56202199
223501AD 009200AC 40414C52 005202A0 00A44052 13981420 25109208 49802938
14A604A2 48A30861 08A06041 68D203D1 8426A000 57135800 A309B0C4 26A860A3
4A1A4F00 1E14345C 847C0585 AE00A204 A5A03141 C0A506D2 00D240D8 0A0A0A09
0A0A6A12 5F326109 70A6D700 A208A404 D203A000 82000A60 0D042609 5C6A0505
84052005 10042818 58227835 004A1004 5002A00A A000A409 618A6005 1084195B
24314108 92084900 05840510 045002A0 A0D10490 04484A03 0A208950 1290C414
C460F7A2 44580321 08A000D6 00520052 23400A60 0D026A12 494C5212 5020B1A8
0641C082 10498082 01051268 08A04063 08E04D80 A400294A 0B0A243D 814B0C82
814B0857 13988470 35108681 05200D30 AA04A536 A0005750 F04A309A 61C32581
1E841A54 50E85C12 B8046082 005C0041 004B0005 309608AE 46981434 8E10A600
A400A208 92004B00 490C9208 25429249 41000510 04504098 AD094C5C 30D1C420
18503061 0928092C 08212824 8A0A4A20 0510A840 5220B1AD 89480A20 1890C416
8414C426 25101704 B0042C09 28895030 A024A006 63095023 640D124B 00358125
42A4A300 3501AD00 D64098C4 600D124B 80A44052 1390C420 08315B84 9004B045
30A29421 08618A34 82814998 21099004 98F75932 040A16C4 50DE4512 5D32A000
A51AB804 28097C35 009A1096 C8570041 6C41002A 18294541 9386811E 84365C22
78D23214 4D008B0A 369A8082 1082014B C082104B 0CA40641 00AF06D2 04B00490
C420892C 4A14C420 082108A0 06E28201 496C4108 A5046292 08350105 13A60492
8892C0A5 06410049 80828292 80E44D00 35104B00 3542A424 2189B084 602689B0
F8A40481 0A500A16 04501278 A690E086 82A42621 18902D08 A0065240 9804480A
2008B104 2889680D 134B8CA1 8600DE04 486A124B 80A40452 05500052 84904520
25012501 AD405200 5220A000 D6202108 524AA6A3 99328681 AE40416C 4168D200
D200A318 5803D1C4 509A000A 208A260D 13A60407 0A369EC0 074A051F 841A96A1
F04108D7 00410049 08821096 08052055 0045C8C4 35014B0C 5784E06A 203510A2
04A50082 000A208A 400A1404 70A634A0 0082006A 026A029A 8282000A 506A1004
B004480A 26450855 C09280A4 0A217904 21991204 50022118 D06A202D 814B48D2
30219914 842089B0 A8046389 90BD4148 63991204 486A020A 400A34D4 004180A4
1AD04A13 4B4C5240 5820B104 5020218A 409A1082 00AA01AD 09211850 2091042C
28440A40 0A200891 14425B62 1AC47035 0105030A 500A500A 7005030A 500A1684
7035000A 7005030A 500A7025 82A506C3 45498325 814BD890 502278A0 04D200D2
13900450 12580528 09500052 055000A3 4A500A50 6A202609 5005B084 20892809
4C6A1004 50026189 480A16C4 24251086 814B80E4 5D525005 580A1484 2635009A
00AA1082 81592221 8A404A20 0D203542 82000A40 0A1A9600 26086109 480A260D
13820168 08B14584 AD40410C 8242A434 315B1350 20210891 0458AA01 AC00A404
5223640D 024A2005 2035000A 60A94052 20A00463 89680D10 04908419 92080510
04E08A43 0B35014B 00A006A3 89B0047C 0500A325 006A1386 10861096 C0A500A5
00A50641 A86189F0 4A008282 291926A8 24E19261 C32581AF 04520361 0990C420
082108A0 0082006A 202D104D 0C82000A 404A203D 000A2008 A000A404 5104D202
21095000 51044100 4B088210 96000510 04904502 4A139200 05200520 55004508
490CA504 63896082 1096085B 02410005 20051084 506A3092 084980F6 A6469804
5003A000 A4902108 B1AD0948 6A124B0C 82104B80 A4405220 6189D04A 20351082
0105124B 08A42621 18900448 4A05494C 52409804 5020E1B2 330AC405 84CC1FC4
19BE546C 944513B7 35109600 05203D10 860041C0 D7004108 82814BC0 82104DC0
152D18E0 E14BA8D1 047C0505 2A4A2A14 2505AE00 5720A000 82000A40 6A10AD18
5820A01A 588478A0 00151412 0490C41A 86000A20 09500321 08A026A0 34210950
005104D2 02A00082 000A504A 100490C4 2008A000 82104B08 A4008200 0A208A40
0A509A00 6A30AA04 D6036108 21086108 210891C4 400A3487 0A50AA42 D6845005
90142205 12821082 104B80A4 06638928 19220513 B325006A 12821082 01AD0641
80D62021 08314148 4100ED4D 4C41C0A4 0092C550 DC66A6D2 03915C40 C85C20C1
E8A73540 8541AC61 086118B8 04586A00 8281AE00 A4005712 B8A800C5 3638045C
0A305B03 D1843658 00832582 92418492 41832581 1F042808 A0404100 4BC0A400
92082500 0A50AA10 3C5A9420 35810505 05101412 14140450 03A00441 00351092
8882004A 030A504A 10141214 14045000 5203A009 A000A406 72A60641 08821082
006A206F 4A1004B0 84200821 89500052 125813C0 AA105B02 5144D85C 842C8928
8A04A644 638A30AD 28642D81 499CB1C4 400A404A 020A2008 21993286 10828149
21520052 20211890 C4404A20 060D1282 81670A09 5C00B1B6 327A49D4 6A28C693
36FEC424 C6DC0301 7404CAC4 28897C3D 01051014 240D030A 240D1386 014B10E6
6DFDCCB8 C7F9AE7D 2D1A2BFA 0D98797F BD971AC6 5538EECF 8B2E8A60 3D014B08
A526C192 41D250E0 9A811F84 1A4F80A5 40D230A0 0082000A 20082118 B0042C08
D1C41996 00494152 03A09061 08A05490 C42008A0 00824292 495213B0 84168420
28242858 0A140448 0A0A0A20 08218950 02B10450 00410005 10AD18B8 042808A0
00928082 81051004 D06A30D4 03B18440 6A108419 4B003501 05203542 A4066318
90046CFF 00A290A0 40D230B1 84406A12 82109229 72A63421 89901422 05108460
3D010512 4B8092C0 A4405200 F5E833CD 17FE85CD 4F228856 55DD2F4F AA98C88C
4D5501A3 99220505 AE902189 B0042C09 B0C4260D 200D1286 814BC00D 3D2AF673
BCD04953 4978B354 C553F88F BF6C135C 41885A0F 5139370B D59BD3AA DC93B817
9EBD2ACD 7ED6744B 1BF9239D 51AD2D46 9F1B595F 414DA8CB 8458855C 6A13BC25
309A4193 86C2D702 F104580A 400A500A 400A7005 3086000A 500A500A 18861082
8189AA81 4B98A034 A026A000 82005C50 50202199 2405200D 1084090A 1A4D4852
4098C41B 9600490C 82000A60 2D014B6C 52004100 25000A24 0D030A20 08A00082
1082104B 0CA40452 30218990 04486A10 84194B4C 410CA424 2189680D 2035000A
20082108 B104480A 19821092 88A45450 232009D0 0A263542 A4008201 25104B80
82104B10 EA24535B 17D1DFA4 4026ABC4 85AC2B50 4A026A13 96809208 05203D10
4D00674A 13960805 130CC75B 52857D3B 48B146E7 78AD0B46 94BE16AD D80A4C27
7B3EA822 CE5491F5 24285C5E C4BBF82D FA898EB5 A1C634F4 213F9F65 70A32D52
D3256796 CFCAC654 DED5431D 453A86CD 5A65A6D2 00D212A0 9241824A 15A20D13
4F00AE80 A0A0A000 82000A20 08610821 086108D1 14200520 05030A50 0A140490
AD892C09 580A2089 6C0D0505 8405200D 10840A0A 1886000A 3696084B A8218990
842008A0 00A40092 0805202D 10861086 000A600D 10049004 D00A2605 1282000A
40AA10A2 04D61390 C4148414 04D0BA01 49215284 2C8A2008 B1049084 243542A4
00D630A0 00A54063 28640D10 04480A20 08A000A4 40230821 18712A39 BCE35D59
E82EA186 EC240504 35815521 41004B0C 92000520 2D108682 E54D8027 C80DF322
860BFBB2 FF00BA9A F20D6D7B 642F6017 A80C2C65 8BBE8CFB 0DECD082 A8B97FC8
1CAB1E07 7EEE1FA5 D3E05A86 71D67A18 0520FD27 3A492C07 D7C09DB1 C7C87E9F
6D1F64B9 86520550 03614A50 6A200D85 AE09420A 367CA440 A308A090 A0008210
86104B41 D18A012A 08C18242 82108281 4980A500 82000A20 89501258 202108A0
B0A08061 185820A0 60410049 8092C892 41412141 416308A0 00A406D2 02A000A5
00A50082 104B00AE 00D62021 08B11414 04900428 896C0D20 05128210 4B808201
35014980 D613B014 24053096 21722D89 480A400A 24350149 0025006A 30868105
30860282 10821092 003542D6 30A02472 EF55998D F1A426A0 90212804 D7A248D2
02A00082 00AA8125 014B08A5 1AE84A23 B775F8EE 94F8DAC4 78E76C4A E4FB5660
746FEAB7 81FBB8DD 91F70740 82B80D5D 545164A3 CDCCCB2E C047DA11 1D0D3AF6
02283E7E 9F393A55 4713BD34 A437766D DD1FF80E 5A61435A 4B880E2F 4E4233D6
3E5EE34B 7C3D04AA 1096C0A5 00828207 4A306D18 F8411002 0A090A04 82810502
0A2008E0 4DC0A540 D2206128 440A1A82 1086000A 40DE0450 005200D2 00410005
030A2018 5030A040 D18A000A 2008A000 D6505803 21095000 41000530 8A108210
17042818 90141404 90049004 680D0505 20051282 10821092 08AD0652 84502324
1890AD08 A00A2108 B184400A 096A3096 80A42621 89500052 1290AD08 6189D00A
404A203D 01AC4052 02A000A4 26210842 E963DE2D 1B743698 7559AA03 5B983259
BB0D2347 B38A8257 20211800 9E451286 10868125 0041004B C0A53681 FF00674A
34DEEAC1 6A3309B3 15AC1119 36EC7488 E2CD2659 D811537D AF54BAD6 6C131CCA
6762A27C D3E9B20A 7E31F7A7 2AE2957B F996D53E 18353685 4D1B3A84 8DA52A58
4A1004A0 92001E04 9C5000C3 470A349A 2141004B 0005020A 400A16C4 500A349E
21410CD6 50B00428 08211858 00410005 10049004 2C185000 41004B00 05200510
04503021 18901426 A040D230 A0008210 8642A500 A400A500 A400A4A0 B1045000
4100AD60 5220A060 63895012 D0AF0D20 55006819 10045030 A000F6A6 26B1C440
0A40DC22 440A1464 08520590 04280821 4A243510 82000A40 4A203581 498C2128
480A1992 800DE6B6 884F1D65 863BA55C 198C738C 9F837A07 6F468513 6D68C16B
4295337D A8907107 E6828106 0D125D24 F1252035 82A526A0 34618990 4D261851
059F5742 22ACD1DC 888C6238 B580EE0F C7FB57A5 B862F248 2A970A1C D82CCE7F
AA320AAD 26530A26 3640E892 D115522E 4A0D5700 410C9200 1E047CA8 60A30998
74A48071 5B20A000 82108281 35004A20 0D129C04 7805124B 6CD19A00 4B4CE2CD
105C12C5 D623480A 16045000 5200D200 4100670A 20082108 6108A000 A400A460
735B30A0 60D20072 A640D230 6128540A 14044C0A 20082108 B1042C28 680D2005
10045000 6308A040 63082108 21282499 148440AA 10920152 0590A924 21189004
908F0512 92C8A419 9045029A 81594458 1298C424 2510D030 2108A040 524098C4
D0F122CB BFE97803 2CB99751 841ABB18 0EEAD005 6C43B779 A84ACEB2 41D5B637
194CB8B3 A538214C 2717DC50 6AF4A9B0 D104D0DC 00E31880 8510046C 9ADC1321
225E6BE8 D422AC7F 821B0EF7 5180684B B2BA0D66 4A73E7D0 2344C2F3 5807D392
42E216BA 6504EEB3 2591A7ED 8E54211F 79F5E559 7244E569 53CE72B5 4D13A310
9E5C160F A8A4ED2F B2A611DF 788F7B65 1B59AC38 6E7582D3 3FF7BC53 5C15C35E
1EDCCB27 4FFD7DBE 94A1EA2C 3D8215DE 047CA804 844B21E3 28540A14 84263500
0A309F05 030A341C 0A194D80 D6505000 D310A680 8D4B6B8D F4894D37 81B7249A
C8BA26DA B192D0AD 172D2848 0A1A8210 92080510 04B00450 02A00641 00053086
81A16052 30210861 08A000A5 90715B30 2128540A 20082118 981434B3 05138610
4B004900 051004D0 0A400A14 04D00A40 41C0B305 10042808 218A409A 02D60321
082108B1 C4199608 5B022318 90045000 5220218A 2008214A 406A1292 80A41A98
1462ECAE 0E1B9D06 BD195498 122F92B9 37E82FE7 A4B93927 5B5CFBBC 5CD611EE
66CE539B DCACA343 0A41B492 2D287CA8 008242C4 A80068E4 49804604 0DA4D27C
BF8ACB0E 178D453B 45793593 3B4DE9A6 193832DC 1509570A 368202A5 06410C29
F3DB05B6 20DE5B9C 6B5E879A 5EA3EADA 96C0A966 997B612A A24CDDA5 8CDA6537
790EEBDF AC4C3E18 ED7A49AD 234D7BCF B35938FA AA1D3714 74D18A82 D712F8A5
9052F5BB 25845B44 58004100 25006A10 04B08490 8242E692 08100461 02D65960
2544EB77 5BD4884E 91144474 E959844B A2CE9DA8 40443CF6 2DCA8B19 0D854B00
05100450 00418092 C89200AD 60525050 03210861 08612804 05138642 82109600
490049C0 56232C18 90AD1898 04900490 141404D0 0A240512 8601AD60 41000520
05020A20 08B11412 C4600D02 0A404A20 35108210 8242A440 52135812 50005200
63189045 204588D6 20A02663 BE08AEC0 A00A6118 D0DC5578 1689812A 5C59EDDD
37C96519 82F89CBA 8BCA6292 09739E04 683E5B13 C0F5A790 C1FBAC28 188BF569
28A46867 B27B5B60 C54CD79A 3927A346 A0821013 0485A424 2189E0DC 20D16E46
251BC52C E62ED928 1EAB2897 58DD1475 62E876B8 EEE3A2B4 3556BA93 C59C4D5B
6163C8B8 4FD89C50 2042A590 D1841986 014941D2 22248A40 4A138611 222D4257
23640D05 0E861172 A628803F 74246855 49829E84 50FCA650 26A32A4C DC00D202
2189E00A 400A400A 20082128 6C0D1004 50036108 6119220D 12861082 1086104B
C08281AC 60521398 04908426 35814980 82000A60 0D020A0A 0A200821 28440A14
04900490 04901422 05036A12 4B48F25F 0A600D20 05128200 0A2018D0 0A208968
0D129288 D600D212 D06A3376 5A27D161 61B800D9 8681AD2A 486A3092 4973410C
F65B1311 2E8A6531 412173D6 0030E882 11F1E5D9 92881A82 AD846A37 84562340
DE84192C 19361F5C 60699114 D9683D01 494C414C 41808210 96089B9A 91422741
4EA1B0B8 430AEBC4 16AEE489 4DC24A1D 6716846D 5E58DF82 015E172D 4AB9F0BE
C4198281 4B808210 82814B80 27A92446 49015230 210852A5 44B05EA1 193F012E
AA5E5805 9004D00A 0A5C00E2 AD00A400 82000A40 6A202582 9208AD60 4100AE40
52306109 783542E4 4D000520 0D308682 F6A66052 00520052 30211898 044C6A02
0A400A40 0A262D00 6A124BC0 8242A440 4100D98A 814980A4 00821082 10B30502
0A194B00 051004D0 0A400A50 0A194900 490CA490 2109685D 00774A60 EBB6C9AE
A060D200 41212328 586A3013 C426D6DC 13982B08 912BCA19 78A84033 916F0A34
36F8866A 94A447FE 24232902 5C33B160 82B021A2 2D435EE1 8A840A1D 74144867
0A686805 46638A14 C4242500 0A500A24 25825705 7845C819 E1991719 E6B36AD5
7AF3677A 498E6E2D 5C897A52 5C54D865 6CE883FC 3F9A13E0 59342405 054B9821
8A0A0A19 9D4A2256 4A6641C0 D622983A B3546065 E1FAA44C 8567EC73 478A51AF
51AD5B64 8AE682C2 C3EB5971 516CC130 65686BF1 E1700F0D 62A2C672 1904AB86
74458652 00523021 08212848 0A208950 004100AE 44B80448 0A260D12 8281AD56
90842008 2118D86A 05490049 00494C52 125800D2 00410005 20351082 42A40082
01490049 00052067 0A260512 DB8A000A 090A2667 0A140448 EF4500AC 008242A4
00A44052 00724300 4980A440 B6657285 49085700 D2005142 580063CA 1A828296
0A24268A 60DE0A36 13651491 0A8072F4 DD057626 6A836A56 16000A01 AED070F2
BC7F874A 43F44226 F4AB8B3E A948CEA6 2E35173B A80D4E49 C6239989 49808210
86108200 6A1004B0 8470A060 A44BD82A F4F1A6D0 2AB6ADEE 9BC493CF BE495286
C685F7EB D78BDA19 C967B1C4 0D821092 00490C57 00E3A344 21056663 1926DA23
9436C167 9A33F171 439846E9 55D49C9B 3000E3DE 952A0193 B0A43C1B F5DB950B
1AA8A890 0B9AFE2D 0958C676 A8062884 6FD00C1F A41E710D A8990A55 002582D6
03610821 08410520 0D840510 0450D260 5213D80A 40DEC426 25109249 52005200
52022108 A0008200 6A054921 52004180 82000A26 35428200 0A400A40 0A400A40
43808210 9280A436 2128640D 1282000A 19828282 42D60052 004180A4 40A67513
4D41004B 004B004B 21410055 00CD0503 6A1349AC A000E692 C866A298 3246CE96
887669DB 821065CC 231F953F F0695234 E17C7E38 6599C12A 26898559 E41D05B6
2BA2A3E9 DBBA4417 EC328223 B1042818 5000410C 82006A20 2D104D61 9835A864
1BD2BD54 FB5B34A3 22A53F67 CF59D9B8 1B27F3A9 51377D5A 25039D8D A51A9884
263D0125 006A13BC 5C2294AE C48CAEA8 610852F5 BB2566D4 D6A2F859 5854C876
E05C6809 D63E5F9A 15231582 EEDAE4BA 95C0F327 2819A12F 17C4DA98 C73A3517
C555BE68 0A1946F8 F9A6012A 82F539E6 834AB209 D62E8A6D 3EA2B8B1 044C0A26
A826A004 D205B025 8405200D 128281AD 56D00A20 0821286C 3D1033C4 404A0549
00996A20 0D100490 8440DC03 A0404100 05128200 0A2008A0 00A49021 082108E0
4D000512 8210490C A400A490 2108A040 41004900 49004921 6308A000 4DEA368A
82000A19 4D000510 045000D2 40D85C05 6CA95690 C4260520 0520D67A CC08B8E1
4D5C0B8E E3F50A5F 9A0988E6 46FD9EA4 82DB19A4 5B23004D 8024F757 04E94C41
EC050A14 0490C420 185003A0 09612878 A0A052A4 D02E95B8 FE300D45 B15471A9
C11A395E 622B342F D2B57CB8 F1DA6023 E70FA00D 1A33C450 4A100450 02A000E9
E3499198 0428097C 604F0AB9 211F8419 4A3D4003 371444CA F9BB2E0A DC23D3E9
A5556183 E3AD2997 649F18BB 35B24939 CCEFFEA4 4427D83F D987C30D E3443332
41BC1BC5 E196A18D A26C4100 35109688 A544B804 2C892C09 683D8149 686389B0
C4600513 92695200 6308A000 82000A20 08218950 02A00652 405800D2 12580041
4C520231 DB135030 B1842457 410CA440 D18A1082 10D01390 84406A20 05200584
C90D1286 104B80A4 008291BA 2F7D2253 E0920849 6CD20041 00490005 200D1004
500023CA 1A4B0049 C0A7677F 41883256 DE4585DD 78C1E0A2 E632836D 48195D01
632830BD 43F05A88 8C6A060D AD90A000 5000816A 61A03441 0561A060 A3289861
19CAD4B2 069164B6 701A3D0D 0DB4143B 30A98C7E 6F5ACFD2 DBEBF0A4 11BCE766
76657E07 3542922A 2828544A 10C44498 84197E5A 40C8DC50 E8A544E8 0A198210
82828737 7B41985E 229C6A86 945BB75B D4CCDF40 AD7034E4 3EDB1CB5 D61016CA
9DBE1494 85335C12 D05C2268 8CCBE2AD 194CD58D E596CE61 C161EA2E F16F677C
C11D2793 0DCD358E 13A3A856 501290C4 602D8282 81AD0A21 18D86A13 92495200
52004100 25006A20 35004A10 04500041 00051004 70A64498 C4202848 0A090A34
86104B4C D220B104 2C0990C4 400A3486 006A2005 04CD0D20 25000A20 082118A9
59ACE6D2 20A040D2 20A01A58 00410049 004B0005 20052026 8A1A8B2E 08219924
350164ED F5E4D9AE 54ACF136 F0AC7FCA 6F71F327 496FD2D0 B6A1281D CE359EA5
99980468 0504AD66 1604480A 20086118 E8D182D2 B0E882D1 480AC2D3 9641D8D1
9328DB56 32F72BE6 CAA6F09C DC37C975 5693C53B 6D1FA31A 41095DAA 82572244
AA823384 20282489 E09A20A5 C08C8EC2 270D129D 4A846689 5000F13C 84809E69
D200A2F9 A540C167 9E84600D 234D87AD 23895199 EC946F16 CF5340BF 2490014F
9D144A46 C217BAC0 E14DC6B2 2943A613 7BEEA980 C4C7A865 F2DD5D12 74CC5AB5
D1120450 02B1C41A 996A0549 68916A12 4BACB104 90C42625 82824292 080510C4
305B0221 89B08420 89908424 3D810520 05108424 670A2666 8A194B48 52135800
52405800 52005220 B1045000 6308A090 315A1358 12500063 08714141 9675138A
9B6A020A 24A81950 30618938 41089208 35814908 A406D200 D18A01CC 0585CD55
414100B2 2BDF821B 63342D14 D8EA9B8A 5E72791B 9977C6C7 2C0CC75B CA47E025
7A9EA581 8DC83D33 21282408 A0404100 4B41D383 4A96117E 5A603A86 33C1CB0D
86847AD6 222AA65C F3AF6377 4F5158A8 17118139 A82BCAB3 07ACC0E8 A7051452
40580041 6CD200D2 02A09042 A580012D 82A460E2 86016608 D104A08B 8C705A94
E358D909 741C51D9 ECB76B64 5522D58B DC71D2E5 44D44B08 9E3D9F65 98A9743B
D1402634 CE8262E4 4CE9A44F A5B839CC 23F00D55 E8548AEC 36C16D62 63C1BAC8
D1FDD284 EA92B2A8 10D09FA3 760FAAE1 5A964EFC ACB2853A A517026A A6D20521
0E9FF367 3B33AE35 D3B2B4D9 80572021 99343704 6C3D8149 6C5230A0 00330460
8600DC00 419CA000 3404B004 5002A006 52026108 A0046389 D0DC13D0 DC23444A
036A1004 90C4600D 84AE00D6 1290C420 18980460 82109280 A436A000 8210B305
60685427 A98D2741 D39611E6 3C9ACD20 18B8A840 A3192235 8149C0A2 089280A4
36A004D2 2021894C 5C0391A8 56901414 C406DB63 AF4D0175 E97DD382 C8A81D99
C813D570 D3CA74C4 0C828149 80A50082 81AF6438 BB25C2C4 26996331 432183A1
A0C1F1D1 9241B47E C7895AAC 96EC439C 7F17ADF9 92C35E8B F2089834 FADDEEA2
9364A5B5 88F4640A 70381919 2D093C77 830AC2C3 254278FC E52C4AFB 66E39259
B986C505 B4581993 0ACC5615 348A1082 105D22A0 24E203D2 80CDF7A1 8C7EE534
1A859517 BB776D19 E25E5638 BC8B3CD7 AD77637E CB9418E1 F6817C5B 7534B386
527CAC14 E55F899E CE04569D 72AC5B66 AAA351A9 346941DC 4915663D 3DE7A2C4
A2612D63 70391925 2614FB6E A6ED6CC9 AB013563 C1A30502 FE04F040 DFCD2D22
4CC28B1A 33848D18 F9862ECA 1D447837 76E95D62 6D1226DD A7658828 84E2F358
F8A446D8 E93E5E2C 5512C655 95465F6A 66956826 E7F5A538 24DC940A 08A806E2
3045CD08 6C924963 89280861 894C4A12 96C88200 0A409E25 30376504 AD406389
E00A600D 2005020A 606E08A0 26C02D00 0A0A0A20 08A000A4 240B890A 16049004
90C429AE C87D51EC 68F219BE 5CC14C3F 39187C62 38110792 089B6A20 35006A05
49000510 C4242581 5B044148 52125803 A000E683 6A1389AA C292C8A3 B74D0333
E655F768 4B183154 C2657852 480A368A 1082000A 700595A2 4DA92A24 FBAB7F4A
96D6A05D 76622C66 8958DC22 58DEC41B 0C25014F 910EC905 A524A140 A56877D8
242E4A4B A4EAC7DC FF003C25 86847D95 F83012AA 442A244B A121D202 43972C76
EAA2154C A5F76284 AEF23681 3F22BADE 1063FAA6 2DC2AD32 33C44D5B 66E3FF00
6AB293C1 5DB490C0 A4B9A6E2 5667658B 9612C347 5CB1B935 A8194133 F71B9F55
610E63B6 29B59F25 C192222B F369CD55 D1C17B44 E9667453 62C72AC4 E716F8A4
86024B11 131454FD 1B30718C E7A6D9E8 F5D68ABE 448637BB 5A208A4D 6B22E7B2
3684C8AA C2578478 64E0874A 760D2B19 AAC8FF00 A38C4CE6 45D9DB8A 8DBA9177
87188FDA 2267355D 515CAD77 517A3B81 7E19A5E2 A2251B86 8AF45AA6 14D11510
2D8958C5 C74B4186 1ACD83CA D8743641 00AD0092 084B98A0 00505050 03A04458
00735705 4C0A1933 45128281 25010530 9680E44D 0CA40641 00470A34 9600AE60
5200D250 B084400A 20082108 2108B114 528966EA 64D89F94 185FDFA2 94C183D3
8602E7B6 24240950 03A006E2 960849C0 82000A20 08A000A2 48520041 00450855
00DD49C0 B70FB980 7ED1BA22 265697F5 EDBEB5B9 8DFAA2C7 FDA21FA5 74369144
B881AA23 5EA000A4 40520083 05132C28 1D23A9B8 B162B39C FD8F2DE0 25EBDC7A
E1597703 5EB1C4B9 B0842A14 C40B9E84 50C8AF4F 0A11F77F B3E70F0E 65644AB1
8F0C8141 CED34841 6CE34A2B 85ECA254 0DFBB197 98AB2993 D2D6907D DFA57ADA
66566E71 C10F7014 E412C4DA 65E69518 A87CE8E9 5960E052 4BF372C3 6D6460D6
CD1C5D17 ADDAD149 16268056 135D859D 2C2E4399 437C81C8 BE144608 EFBED632
B2B0A131 CF43A08E 0DB8F48E B6B3C9E9 FD1A32E7 BEB1B755 095B0DF4 B37220D9
789C4654 232F835C 832B0E8C AADC3443 00AA17DC 408D07E7 A6307924 62B3A73D
4354B708 E1E2DB82 8D8B8E46 D3472A81 8EF3BB04 9EF88DA6 B45E302F 0DD319D1
15890540 6FD8EC0D A24645B4 6404E7E5 2E3B548D 27DFED59 04D20041 000A2500
6A202D10 4B0C762D 8A349229 D19A0035 004A10C4 400A2009 90ED8948 5C00E292
0026092C 8990A800 C52582B3 25000A60 0D845904 D284B06B 188D13C4 46EFD537
79275451 42E86A04 DB8A014B 80828292 88C50D02 AA81674A 020A506A 10049004
2C185000 41C540AA 004A1523 8BBDFE15 AC36AC55 694D1B9F A5296763 D8247B9D
99052EFA 892D5E60 CDB21A81 94015D91 9004000A 090A1A4D 418325A2 5E88885F
8A63889C E7A61762 445544F0 41610967 4A05CC5D 915040E8 E8194A74 4D49E319
46B82515 A24D49C5 0B4E9FD7 BA33A9FA 277E144F 4FCACC70 72ED4331 0D3AB3AA
0FB2346A A9623DEC CEC8C045 3BA2AC4C 2FB3D66C 1E057681 99ED5D1A AD5213C8
AAC2A500 27A144A1 61FDAE1F 85C93752 E824D135 2DEAAD91 2FBA11A4 5897DEE4
525CC8F8 FA2DCA1D CEA59F8B 5C361B18 D58FE6B2 86A97C26 A3A02128 385A3081
6C182AC9 F9F2A44A C615BDDE B5898D7B F6F6183F F7AFBA70 E26C9885 525932C6
26AA13D1 8C27D005 685D3126 4D671E39 A97C892A F103B55E B6B4B026 53397E7A
16C53D18 6717F979 D1BE1113 9BBDC42B 915A1147 91AA24DB A8EFB7D6 BDA585E8
07E8D4EA 933E5AB2 50BCBBAE D0807F55 80D61360 86010510 A900C43D 00601890
042C09B0 350A5C41 C0A56041 80A460D2 004100AD 008242A4 60810A36 1B045004
5005BC51 08580A30 430C3304 38430867 8602C52D 109608D9 DB9AC8A5 46E84A02
6A030A50 0A090A40 6A050520 05138281 49214100 BBAAC661 A2B4A6D1 DB54C5D5
D8A3415A 6BAD60AD 2D2370F4 1BF5E683 DAE216AC 33415C06 0A192C28 2818A833
84BAB804 F02E198A AD90B1A9 46D06A84 05306918 29A83925 548A43E1 4BA852A5
197902F8 10851795 C12FD7B0 FF0077EE 4DC14AD0 13349E45 861A2748 7CC79BDA
119D5056 161DE31C 2F0D72B1 B8BBE949 58BC0AEF C145CEE4 3C8682D4 4B00ADA0
21CA461D D42B2A6C E2501AE3 07D79247 1B783B62 26A0F6DE 05667924 8BDF4DC9
27A1CA7D 47B337EE 9FA6CAE2 5516FB3C 9BBB359B E584F479 8FB143EE E11AE8A3
05136A09 7CCC4017 D2140133 D53B7CA6 9DD1360A E5385B02 9D61EAF3 7770C165
847E6A46 DECD5F5D B7A18589 FA819A43 117119A9 901BF389 5507A297 7426F332
87DDF4E9 2C2B92DF 3D7CA68D 3C263607 C4A68B0C 5CA4D8A8 6E12DE45 844BC0E6
96391B91 629958BC 01C51663 DECDD4D4 D836227E A6380AA4 469839C4 200A208A
20093C41 C007A504 E292C0A5 60628201 8B0A16A8 34A026A0 09218A40 0A240513
86009A00 DE044C0A 40DE4594 36539824 0D1004B0 14029200 35109680 10DC2274
66896086 01CE3D81 25104D8C A0008200 6A030A20 89902520 55000505 AD0027C9
2542D82A F02D7A36 84AC4C21 9D1F5591 47F153CC 9F269DB5 5C092E75 BA13A01A
E84A1004 608681B9 9AA02E6F 6A138200 0A2008A0 0089477F 9A63102D 099C395A
142A52A4 1939383D 2D3B626C DA7BDC01 6FCAF8E3 A511CDD8 BC3F676A B87A6A6C
D5C677B8 842008C1 CBA044E8 BE84448F C0B233D0 68435274 A42A4919 E1AD3A15
C7784F0A C58E76A2 A2A862B7 0A1F06A1 E935813D 0BBD9733 1C43AC49 B4BAA356
95D094DC CEEDCCC7 B5FB6DE0 839A317B 2C25E833 7F9BCFA2 DC9F692C 3719DC50
4FF208EA C9A03839 26DA7FCF B70E6F7A 31A6B399 A0DC0D75 150DD538 92AD1B31
F1BCDFEE 4D2961BD E0851109 302F1D1B C36DF02B 369E35CC E14DF432 5AB359EC
31BD175C 831B6446 F1037851 64AB41AC 77DA3923 5E225C95 59781784 367317C4
28C23D13 2199209A 4E0583A9 28868DC7 DBB232CB 9200494C D212B8A8 7781029A
91E2A200 C43581CB 05100490 04500041 00052005 128681AD 40410049 00052005
1382105B 24D27D83 90C42008 D1843043 80A460D2 84B00428 CA09DC30 6119226E
89580A24 0D036A10 04608601 4B08A436 A00092C0 A40AC01F 0448DC02 60C3B725
40A877E3 B5747D5A C5D4C42C 13D56261 91C4CCA5 54500331 4380A460 D230715B
00D20052 00A31934 DB9A4193 86C2A9A3 CC5D21F8 A6299865 0A295F4A B936BD95
C13988BF 2AA0DEC1 2E296229 822E5BA3 5C4A2035 82270EA8 44C6D336 4F4AF413
A6AD70E5 BA0537A4 84CBCE63 D6323251 722364C5 9A7BC155 6A670C89 01192D02
9A37FCA4 8BD941AC 571B9A23 7A9C35E7 28F1A1E1 4D219DE7 2DD48BA4 AC7C422E
556787FC A5661D3B 00F79D0A C2F3CC85 3D721825 F49270DC F3D1AA6F 632D8249
AAA56217 DCD2CC5F 9944DD29 CD65AE62 A9C6A5FC BC8426FA 1625F424 AC3EE15D
1938F0AB 17A80951 C487BA20 7254C360 B1D7A2A4 B82229BD 4EAF553F A19299EA
6375C457 6075D2A5 8120C05F 9E842248 46BD3D5A 13A44247 CC201839 0C604EDD
7FA6E4A8 86FB95B9 5030F1A8 342118F8 9A815B02 414C4100 05100490 84160428
8A409A81 35014948 52055012 D86A2005 20051292 885B8549 41805702 314368D2
135000D2 03C00D12 86000A20 08100428 095000B3 43214100 4B003500 0A2008A0
405213D8 0A1A04D3 BA23547C 5E84A027 1AAD13A5 5CB91A79 611E128C AAC888CD
DC534D37 9804B084 406A1217 8467A006 41003014 242D014B C0074A05 2A191A22
4549B8B0 95A9F8A5 19611E28 64CAEC77 4348C65A 846D2ABD 626E9EF4 16456772
E98206F8 E9A655CC 1692845A A5D9343E 0C4AB443 1E0C88A3 A88C1ED7 9840ED4B
9F946F16 B1E84FCE E205ED5A 979A5E0B 270885F5 AA0DE12F A2E59D4F BDE423A3
825D33A1 30C9266B F4343B99 8005A81A C840F8A6 0A42BFB5 2D5E7259 213C8A59
1E9B51E3 CC9C2D8B 53FF00DC 7C5E9435 F13BB238 523D6DF9 A0D2A562 5AAB9711
7592DCD2 95241FC8 FCF8A4ED E9784432 4645BD6B 5BB24927 C431FE1D 16612986
AFF0EC2A 4C39F879 8FAA40E1 864F3A49 E9143345 A6628642 C3DFB84F 9A0B9BC4
BF9E3053 F6D486C4 BB41BA35 C915046D 28391984 0BB08B18 14C3588D DE357AA5
BC89AE6F 96215A7B BC5BAE93 0867CD35 814B8082 0041C057 84503061 08A00082
81051233 04900450 00520041 0CD60041 4C628610 82105B24 314308A4 26D27593
069208AE 00920066 08A00010 0A14AB08 32ACFF00 A78A1AC7 4DC13154 980BF9C6
F85BE325 44718886 5E81FBB6 B84127C8 F6BD50C1 08D47E7C 3526C684 CAB15A02
71438082 42C50D10 04901424 05100450 D368912E 09D032A8 18D8B959 BA8844CC
69D15B2D 899B8463 5D892FE8 849E37A1 6440FF00 469F70E3 5DF913C7 D980673E
A8BB39AC 74656641 0005309A 4141004B C0074A95 224D41A4 59624A1F EF599960
5A0BE375 5B06078C 09049BDC 22930897 07DFAD67 F0881A93 CCCB5D4C CE6A4BB1
C156AF05 7342B86B 6DB38191 5454EC95 5DFB2C85 D221D88B BD14A8C4 88C6FF00
E94BBC9F 90F96F58 230C37CF B4C42987 3391ADDD F0A7E968 257D2647 721ABFEB
5B99D9A8 1DDEF3AE 795A33F6 25B14B54 B84226AA 6249C46A 1CBF2A7B 74A72246
4FBA0474 0BF85A05 85A416AC F4F6BFEB 283B265E C2538C2F 878A0532 295C5579
C865CB6A 4850BE44 66543945 46820A70 324106A7 18AD59B8 9B7A3C2F A365804B
6224FA0A 0A5696FE C74D2F3D 5FBAD833 D111053E 5BA6182B D34C5D81 CD566006
FB533098 8A0BFA29 00EA36AB 6D0D85D6 2027DF9A 374F62BC 1AE2D782 1B16ABD9
08A46310 92086689 588A814B 004BC082 000A400A 14049004 50007343 6C4180A4
06734380 82010513 9B6A1292 0099AA01 4910E69B DC242854 0A804ADD 6BA982FA
98BAD440 C4587CA6 1829CAE9 5B02A34A 29F2C25D 496406E3 89AA3501 FC3B5375
83CAF166 09475AEC B2119F21 F767BA99 A01C4E03 DEF499F0 49D5D89E 74032729
3CDBA291 5A4BD298 F0A7CCE8 2554C64D 11168600 0A096A10 04501514 0470A608
A000165F 51365497 FCA64B86 A8BE61AE BBB8493B C1A4A36D C53CC6E7 356670A6
D99464B7 9FD68CEA 89988DFA 2D4B03A0 00A5A001 05124D41 41005F9A 43344D45
69C45B50 395A6614 BA605170 0F6D7040 B8E945E4 F37D36AE 4BE8E696 E24833BD
B8877F69 65D10B96 CD2DD9E4 D7C05A9F E94BD3D1 199AB6D6 5EEA1785 E1C76EC0
3DE05F34 A45266E1 5BB7B112 4B41E14B 00AC6082 6AA161DA F54E139C 958C7EC9
A72AF75F 36907C51 60B799E2 EF164E4F DAFC2492 22600CDA D0051D02 C3D67A06
1B31E15D 861BB8AF 35010E8D AF250BA0 32F27453 98013C7B DBB318B1 6C745317
468B59BE 34C983CF 82825904 36A8B959 41953FD4 8BA093C5 65639B3A B2BC3384
00365C96 816F239B F5539A09 CD0D4652 20A00027 F8A4B098 DA70BC01 EA354BB0
66D9CA00 82006A05 EB5D42B8 04500041 000505E9 4D80A460 E2864282 10335C00
910A40DC 50D0AA42 82109200 996A10A9 00A426B1 A940410C E6860149 4CD5EA36
16A604A4 06D202A0 04D18A00 BA000A30 57848567 9621E286 014B8082 004A203D
1003D392 C8E59280 A5244147 6A100460 A608A264 414C4108 82000A40 0A36E103
96CD1726 42A62A08 A2ACEFC5 38FB5BB6 21AC6C36 BD7A5AA6 2A548CAA CC6C3D42
5730B104 50026189 5C4A055F 4A95A26D 664ABA05 235CFB15 A8EC6425 8D4DCE13
8F657200 D84FAA34 9841CBBD D14B71D1 4C3D1EEF 32AD68A3 2B43C0FA F1E7A2E0
55417CB5 ED9FD47F 37B44999 1D6E5469 BB688728 ABC877DE 74D2C851 91342614
7690F5A9 812C365B D48C6F2D D584523D 068777B5 5353B2A1 7C3142DE 3292285A
7C692E5B B36D1BAB 72BF4667 9EB9F7B9 BE35AC56 CEC54F09 FBE6FD4B 8936FCDA
B3B08DB5 8AC5FBB9 70C1D7A2 24C997C4 8FCAEBD5 4C6DC9DF E0FBB60D 58796E6E
9AB1229A 2E6B644C 57445800 435B0598 069BD313 250EE41E 5EA9B9A9 909213EA
A35D7425 A0591BCC 639952B8 16E874A6 AC644F6C E3659AA0 44556671 91C4CC82
4282005C 10268583 5CB48D9E 4A86676F CAE01992 29A34A50 6A054B08 A5008210
82103304 5020C00D 12828199 6A03DC22 248A409A 82C40D84 668A40DC 00520063
892818D0 4A02DC05 D06A8405 235F27B1 6096084B 08821086 000A500A 20096082
4282812A 9912042C 08611912 AD895C4A 020A500A 400A500A 20086108 A0003304
3843C082 000A2009 480A36E1 0375A9BA 8D86CC59 67E9B2AA 1226A32A 447A0D19
4BC0A500 A460B3DB 204125C2 A74D6984 5B99462C 1954BB57 F7CB5BB8 936E1DD7
239A99B2 3339E428 3317DE45 902144FB F2517112 1BBF63DF AD29642F BC3DA81B
CE4477F2 15458689 49A8D07C 6A96A88C A92D3E9C C3827EA8 B991555A CC286F82
6E1CB173 F73B9450 612E46B4 2F7B51CB F464320E 93C46619 23548A2B FBD26637
1B1D6A74 D3968028 5E703057 43B6D459 E7AC7E0A 9EA53FB9 B744339C 06A35537
71CC88F3 A00D165E 769EE44E 2F3974A0 489E1507 8D4727AA C8452F38 5493F177
62AB32B1 91971126 CAEC3C86 4227943B 5AB2E023 0B9E80D3 50823A64 34653798
C4097C41 7082BA14 942110A8 294D9461 C16A3715 CCB6A156 49D4BA7F 3B95CDAD
3C1F8434 8A109B0A 60EE0A30 628A40DC 40B8A900 332510A9 0A610950 03314300
450899AA 00DC0062 8601AD06 4100CD3D 10331422 6608C00D 3037C409 DC005223
B49FEA36 CAA50441 9C610A50 DC055084 50055004 B0A900A5 00922941 00258135
014B0066 09503071 43214100 2A895012 000A2008 A0044100 35108600 4A1004D0
6C6492C8 BAC3C565 1DD7B082 6D6C3696 088B0A16 04CEE292 A01CA854 856782A2
2C182561 52A53934 24803A57 EA37A9D4 2A4E749C 05196576 B3756271 273C2FEA
004FBD54 C8D7C846 F3BF14FF 009836FF 00EB9627 B8AE8E39 DE8DBE41 87AF254E
33AF9BA2 C5B58BDE 11CFAE97 946F37A5 E6729DDE 56BF79B3 A2EA3CE9 17ED3226
3D6E7460 923639E1 4FC5F611 B0D6162D A5C5F385 3AA44341 A61457C2 1CA6173F
1CE1D3BA B389AC7A 6605DD71 AD677BFC E9BCA5D9 E57F527C 9782E356 88F86C09
9BF96556 BC76E9E4 50866A77 64AAA521 BD1C00C4 B3A07533 495A0D0B 6B8F918A
237E607B 9F77362F 6A8964D7 A0EF25EE DFFEE15F 75536E3D DDB133C2 A2BBE41E
2454242F 12BF7581 60FA097D 9D19F3F3 A5862DA3 1148BA9B 4623A4F3 68EA13D0
2843FDFC A6B7009C 16B08C43 640A9BA4 6E6B1391 45666399 12C42405 50BA8573
A86CE46C 4D3E1AB2 0C0AB765 17995B19 F5760ADA EA569C8D E983DBB6 33E5155C
63DE7CA4 49AC729A 01496C33 430C33C4 19234B08 F65144D8 0A702510 96C88201
49000510 04500041 00CD3D01 990A40DC 0331C305 30370428 1890C409 DC1398A9
4498A906 524079BE 89CE6108 6109B004 B0A90082 42500271 436F1086 004A202D
10928082 8105200D 200D1004 2808A000 8210B705 02DC0091 0A246E08 21092C89
B0A94062 96004BC0 A406E14D 08EA6DAA B654052A F21BE86C 9A45D060 DF493D6E
8219D6AE 970CF79D 78DA7493 126F555F 7AECE306 614F3758 7CD7B92D 798337A0
D2DF8E7E 7193A601 1BA88C5C AEB46EBF 251BC13A C72C5D14 AC5203C1 B1D3A624
2C0D1237 C434097B 0F398F25 51595BF2 91EEE79C D8FDDBE1 5B59198C 9A3D6E33
58DDCEFB C297DAD3 4D67B7A2 13CDE96D 7D9CE166 CEBC3D9E 35CC36A3 C9AD4772
39FEA268 9A22B391 39D5F143 A89D44DE 5853160D 0BF5A94A 69AB21EE EFEE8622
2C7676A7 3631DEE0 A3A170CE 3D22F973 E138E159 157FB47A 869176A8 9EE87C05
1A1FE8A7 1506723F 2B5BF9D2 58AC0402 FC2D4B6E 91362744 5969BF01 35977BF9
A6ED1311 10D1BF65 6867218A 184B000E 828B49B4 207DB2FE 853FD9E1 DC6136F8
266D52D0 F90A5105 916017A5 21F471FB A7287C66 5A005904 621EEDD9 88B119AD
F9042108 A0045205 E00A1933 04502228 09B04584 053092C0 33C42466 89D04A12
33452005 B2689629 62861082 42A40641 21638950 00629629 867512AD 41009B0A
260D200D 03DE0478 66093C43 08928882 109D4A84 66082109 B0A906D2 02C02D00
0A2008A0 40E28681 05100450 00D202A0 065200D2 222408A0 0082000A 2008A0D5
00920805 10251045 054B98D1 4B45A81E 4F6A123E 86414852 0083D222 90594157
9A02A79F 30DAD284 7F884D8A C35DA761 EEF4B935 E83A9E84 BCFDE1DA D65EDE30
1F9A4DE8 95EEB027 09EA22C1 AFA99334 9D93C073 F2CFF3D2 7592A629 91C1F8E9
82B1A832 C9B4F9DD DFADB07A BC4D9A6F 76DAE657 B744B420 9FA214E6 A2C456FE
70A4A0E0 F4DB100B DCAE836A 55A8DA12 E35D4B36 365621A1 2B68AA6E D94CD42C
C8451071 AD03E314 558C409B 3F39A9F9 7816A751 9117B54C EC3CE726 13544872
6974A5E2 E2258426 DCB25981 6925D15B 59DC7425 00DD3BA9 500D6AFE A9DD646C
73719615 8B6F0ABB 95804A9C FC5A611B B2250DCA D86C3D01 ED594490 84504A10
45100450 84B00490 45206628 344300AD 36314380 D6135020 B1C41414 2205026A
20058449 0CB30520 66992266 0990A906 4180BBA9 7EB354DD 8450DC22 58DC00B3
43006609 B0A900A5 00821086 81660960 86103704 B0A900A2 44910A30 43009B4A
308A01CD 0D03DC03 611912C4 2009B0A9 00B30510 04608600 0A504A20 05200D10
045000D2 00412151 B3004B0C E54D0892 004B004B 21D20261 4A14544C D2206118
E0AA005A 0B502294 1A798F07 13847810 EAD5E8B0 104F0A17 9412E9C4 D74E2A5E
3797D09D DFFCBBC4 77EE23F4 392A1BAA 9815023F 526CA24F 632B128D A6DCE272
69963F50 5C130E15 CC125161 1848B917 44141108 5906C43A 5109905E 3A374512
63527110 8DE15932 01D6A5FA 12906F19 DFAEE7CC D970703E A8C55A01 CDD7CD5D
3D71B451 36F8D2B5 916440CF 657684B8 E1FD1E6A 74828B83 4A30A757 AA0D192C
4A505C50 6082000A 090A40FC 5E45124B 80C43D10 73350149 A02E76A8 4698A900
82108242 82109208 49215213 90A92631 43006608 A0808B49 00498082 427B85E1
889B4A13 140A00A1 04B34341 910A363B 8450DC12 B0A90691 4A200D10 A900C50D
13378420 08C00D20 2D00DE04 B0842466 895CDC84 5000D200 41803304 B00428F9
14B82510 04480A16 045040B8 14240D84 49004B08 82108610 9621D202 61086109
78458815 C4201922 2D014B80 5700D18A 01051382 01ADB761 521260A6 A8B10490
C40AECA2 5416DBDB AEAC123C 5D3AD560 CEC6576A 12C3AAEA 16E84530 5A847825
10DBEBA5 60343F82 4E6DAC0C 04945F53 2A42E8CA 1803D782 72499B91 AC4FCAD0
AFD02F33 4D1DEC12 E3FCEF5D E3065E01 1418F489 4194B326 4A1A99BA 01DD4D85
08DD5C03 91A92A64 7ED38662 1EA91607 21265998 6E3157B3 7003AA75 5AB2D013
33C4500A 606E9910 0490A950 17330448 DC2344DC 1007DC13 9004EA62 968033C4
B9581017 33C475C0 0DB298A9 268B0571 2128B4D7 BAC95F50 0A262D81 05200D20
2D108600 0A1A9600 9B0A16A9 04D200B1 9A08AE04 4108C52D 81668958 4A10A936
A024D1A9 0033350D 30F3A404 91AA814B 80C50D20 664A3043 009B0A20 09586A13
9280A500 82010505 4B6B0105 84AE09E0 4D00AE00 9221D200 A34A194D 48D22254
0A702628 742618B0 A8242189 4C4300AD A0B1C426 0505CD5D 415202B1 45139249
638990C4 40DC5050 03B1045C 0A369288 A556D0AA 000A3043 4C824A13 996A1273
3501AD06 74451259 44D0DC15 20669912 A94498A9 2631434C 73434C91 0A19771D
066EB1AB 99C31CA9 65E007DD 04B704DC 10CC910A 75C03D51 4CDC208B 990A9338
439C8B49 803304EA 910A2466 18608610 82016689 EA41087B C57ECA41 6CD212B8
C4304308 3304B0A9 60D230C0 2D103784 3043CE20 6E19240D 10A934A0 06914A20
6E0841A1 04D200E2 8600DC02 C00D05AE 40416841 004B0005 204D8082 019B0A1A
37141284 2008A000 A5247143 0005200D 12969780 1584508A 10864257 D100874A
842A2874 A029708A 4A940241 80C50512 13A43E81 5D343413 143692C8 A456C0DC
50D80A40 BA826687 AA1B2466 89D0DC13 68960899 0A1A3345 20660990 45137335
0B48DD04 D0DDC430 430CC43D 00FDA41C 17239229 33571530 77552739 17B9AAC8
9F68EE7A 2640DD14 3286514C DC15C11C 14C32C66 9973A050 17330448 DC206EC0
0D8405B2 98C475D1 A9543F90 14242DE1 2805026A 02DC1017 82428242 A4405220
A0008201 0550AA7E D318A668 D2005132 A000A560 D2030096 8033045C DC004100
66283843 48E2870A 266E08C0 0D10A954 B0046086 813A5A00 E2960025 10370460
86103714 246E0958 DC126896 089B4A10 8450DC84 B004B004 384300DB 8A103725
03DC2061 2854DC84 7C0D1292 21B35320 D1844428 18A09201 845B4223 56410184
2159CC78 9F57730B EA7356B3 5927C255 6134A856 193D43B1 4595E186 81CC5D49
73571565 B1A96781 CD5D851A 3304D0DC 054CDDC4 24E6AA0B 4CDD5448 735713C5
E6AEBA80 E6AF6742 731D068B B98E5E71 03B99A39 179B6AD4 6CEEAA1B C32CE62E
28E67343 9C8B49CC 4CDC2397 48DC13C5 92915803 31433107 0A140448 0A243500
4A128201 05026A02 4AB3B8A9 70070AE2 41004900 35012501 49C0A540 5220A000
8200680F E1428A4E 733AD8EB 39D2A039 0DE41E84 266E2838 43089208 4BC0A560
6309E0DC 00910A30 43009B0A 1684260D 10A94091 0A1A9600 051004B0 841A3704
0043C0C5 0D206E09 B0A9A0A0 247143C0 A5346118 5812E09A 1096C082 01AE0452
00418057 02614A24 0D84AE24 D125122C 0978DA22 74DA9499 A3A03923 2CDA9498
A2BCE670 33749F2D 4BC8FDF3 16FBE63D 7CB58B8E 6F57B311 BCE33CD4 5E79B68A
FF00A3C7 39CEA5C8 BFC0FDC1 898DAED7 937AAACD 3D253371 2D995A8C C7FBFEC9
A02ADF80 87E610AA 8D8DD878 BF55844B 6454236C F70CB614 C86A8652 2344DE5C
258276A4 2A44AC7F 6A30947F 6A3017FE E44E8576 3E658891 A93A03FD 5458EC23
8A8CA426 8B058499 6A024A13 9229916A B2981471 211912A9 46580221 89281850
13908424 0D200502 6A200502 0A140450 20A06041 C092C092 88928092 08251092
08051004 480A54A2 E0124519 7FD430C4 59721993 DD8F15AC F6F41183 6932CBF1
6C1315AC 673D7CFF 00131646 D00D4D85 DE5884BC 66E3198A 05030A30 7AE582E0
B600E34F B089A529 288A1604 608610A6 04C53D81 6608A034 C03D1037 842018B8
A960910A 504A10A9 A0D1A934 C00D206F 4A206E09 5C4A1386 1086819B 9A814B00
9B9A42C8 CD44D9D5 54753266 25DAE4B3 09FF0086 BDF02EF3 08BA6FC0 7EAF5F10
F9AD0D67 653AAECE BCBF6488 F9AD1FF7 179ADFD5 39DF5AC4 F36B31EF 97A9E3CA
F46FC870 F7C67ACF 2F43EBAA F1AD01F0 DE4AFF00 E9D2745D 85FB4B22 726FFD5A
FBEFD3B4 AE4AF786 9FD0EFDD 394BB275 5F24E3FB DF1DF9BD 79F5CEF0 2CBAAE0B
33877E8D B8BF267F EFA72EBA AE4DCCEF 7B2360DB 8BF7FBB2 F96C4B45 2A746DA6
7F12DC95 794B0949 31CC4170 031A888E 1714A4CA 694C1BED CD74EFEA 6551E1AC
C25D26A2 7FC2D826 FEBF0CEF 51795D0A C61B3BC2 5CDA76DF 47F5A86D F4D08D9E
E806AB69 3EFB6B49 3EF7DF5F 85BF913A 2B81A927 8DF99E95 D92676A8 368D5615
3496C8E6 D3D085C0 2F3F758E F4824741 00CC55C5 B890A8B7 50682699 61B1A82A
93645591 85A4260B 499CA040 41215200 51242128 440A084A 020A1992 0805020A
1404486A 10842405 10C4094A 036A8449 0005200D 1084406A 10842089 9084506A
1282000A 140490A9 007A144C 41000510 045000F3 B7FF00A7 289F8D5E E95481F0
5CC16A19 4C4D88FF 005BBCBE A46CFBC5 AA442F33 DFAE6703 D974D36C 0546D356
568E6C38 844D29E1 7B23FA1F E7479B15 CA175575 15FDB679 6DE825EF 9B4587EB
39BF4B9B B4859FF8 BFF7DF33 DF9627A1 FF008697 E0BFA6FF 0067793B 53AFCFB3
F0B58BD7 17B4091D 3682E871 013EFE15 ACA55C15 EEB3DCF8 BF2E7992 E7ADF917
ED26FF00 87251B7A 4BF8179D 4A8641A0 2E2D8282 B0581017 37043C43 C0C52D10
9661E286 10149A10 DA226CE3 36A8C74A ACCA161F 239B4D3A E5206E4B 6F74403B
82D2A8FA 8AA4FD37 5EDA5143 07FC13BA D24BA2FE 36CF551A 5CDE4263 38030A20
08714380 82000A16 04500041 00051004 50004100 05100450 00410005 10045000
B4412F5C EFDA1F35 ACD6F411 25E95C8F 5B37FF00 D222FF00 EBB6F0BA 6FD3A297
793F613A DB587DB3 1BDE95B7 62A7431F 454E5829 EE82ABF9 AC49961B 4D4C3D7A
9BF06F48 E13E0FDA D3B81395 58102CEE 30FF00D2 826FC6AD 83ABD37C 98108E5F
C36AAC4A F515A208 A4405215 32A28826 35426696 89CD08CD A7552FC9 255C6FB1
6FF86F96 2F99DFF6 8C77E94B 27A9DFA6 127EC017 54585F8A 856145E3 4D8532E5
22EEA5A0 7EA800BC BE14E32D 328AC2A4 40412152 20A04041 80820105 13820105
020A406A 8405020A 20092C89 90042808 A0404100 05200512 86010510 04418693
20086108 A0008200 0A2008A0 0082000A 2008A000 82000A20 08A00082 000A2008
A000A560 E2D4309B 22CD84FB 7CB459B1 CA55554D 77AD5E5F 7AACA8AF DEE52EDF
2BF4FE45 2F1ADF67 8AFD5BB4 DFAFEA45 F46DAEB8 6F9BF7DB A45CD767 7B17E79D
737F8A5E 34AF5F16 544F8DDE B419611B 5F05FBF6 B9BD2F3A 19706F58 15F996B9
EFA7355E 23AF5EE6 4E9372ED 99AC5220 21086108 2108A000 A5008281 05020A20
08A06041 00051004 50004100 05100450 00410005 10042808 A0008281 05100428
08A06091 0A3459DD E7BE2638 845D4967 72B49D70 E5A69711 7DC02CAA CD87DBF6
14742253 95B8CE84 E27C7A5E B4096D83 8EE8BFC4 875A8C96 5F8B85CA 2F99D358
A5987E4D FAEC74C4 7E212824 08A00082 000A090A 50C0751A 0A5A6278 CA4DB164
BBD17ED2 60E9CDF4 83A71516 B717C3AF C2747BF0 B3AD086F 1C7E05F2 A6F29904
B7053F82 F183F60A C51EEB08 7E31D710 DE305723 D70AE956 027E7157 207ED06C
289B4CFD 04DB0A99 0A75C00D 84052005 100448AA 000A50DC 84010584 05100450
00410005 10045000 41000510 04500041 00051004 5000D200 41000510 04500041
00051004 50004100 05100450 00410005 10045000 41000510 04500041 0005200D
10049004 5000D200 41000510 04500041 00051004 500041C0 82010510 049004B0
04500041 00490005 10045000 41000520 0D20EE0A 7017042C 28282824 08A00082
000A2008 A000A440 D230A000 A4404100 4B000503 0A201890 04500041 004B0005
10042C08 618A409A 000A2008 A0008200 0A444500 05100450 00410005 10045000
41000510 04500041 00051004 50004100 4B000520 05200D10 04500041 00051004
50004100 05100450 00410005 10045000 41000510 04500041 00051004 50004100
05200D20 05100450 00410005 10045000 41000510 04500041 00051004 50004100
05100450 00410005 10045000 D200E286 1086000A 2008A000 82108610 82000A20
08A00082 000A2008 A0008200 0A2008A0 00821082 000A3043 00A006E2 96003500
4A100450 00411051 00F2A600 82108210 86000A20 08A00082 000A2008 A0008200
0A2008A0 0082000A 2008A000 82000A20 086108A0 0082000A 2008A000 82000A20
08A00082 000A2008 A0008200 0A2008A0 0082000A 2008A000 82000A50 0A400A20
08A000A5 00A40082 000A2008 A0008200 0A2008A0 0082000A 2008A000 82000A20
08A00082 000A2008 A0006786 1086000A 20082108 A000A500 82000A20 08A00082
000A2008 A000A400 82104B00 05100450 00410005 1004B004 A082000A 808E000A
2008A000 82000A20 08A00082 000A2008 A000A500 82000A40 0A500A20 08A00082
000A2008 A0008200 41004B00 49004B00 05100450 00410005 10045000 41000510
04500041 00051004 50004100 05100450 00410005 10045000 41000510 04500041
00051004 50004100 05100450 00410005 10045000 41000510 04500041 00051004
50004100 05100450 00D20041 00BB9A08 994A206E 08D04D0C A404E286 00DC0052
00520041 004B0049 00051004 50004100 05100450 00B1D030 5ED0D8DF AD305968
6DEFDE30 5E160BFF 00470DE2 64B1B5BF 6A182F0B 8DD7D010 8CBF603C 8E86E064
B1F01A0A 9381C6F6 EE0DE205 8DF7AB86 E064B1F0 7FD4108C 5CADF7AB 86F1B2D0
78BF4B70 32CEB1F1 BF6A084E 164BFF00 470DC129 D078BF6A 084ED738 96EF9E0A
9342B1F4 7FD4109C 1263F9EE A9302914 0BAFA130 1968FC36 04270B8D FDDD0A93
81D6F6EE A950AC3C F65B1006 7C1B0AC7 C863F934 04CA3CF6 5B10063C A705C1CA
637B5A10 1667F9A4 20CC637B 5A305ED0 DA04CA62 D38AF182 8B43A02C 36AD080B
8B438003 86001C0A 3041E01C 389E0485 130427B8 DC305EF0 EC084E16 389E0427
037C5B30 4E0906AF 05E26481 E3497032 C0F1A430 090386E0 056E085E C0F1A430
09E4D782 E0057E2D 085EC005 E205ADD7 82F1B2D0 7A2D182F 68F05A20 5EC005E2
051C0AC2 810AC71A A850AC81 0A933441 7082060D 61C0A120 1C389E04 8503D782
B060F05A 305EC0F1 A450061C 4F0AC281 E3495038 702D182F 68F05A20 0BC6FF00
66080B06 AF056116 1B8AE005 1C0AC71A 1B8A7182 060DC11A 7BAD080B D6F6A430
4963F73B 0485637B 5A10ACB1 B5BF4BF0 49637B7F D42031B6 A705C12A DEA6201C
5BFBBB04 9F34B6F7 470DB290 1BFBBB04 271B17DE 0485637B 1A0AC2B1 B50D0D61
3136F767 085E167B AD080BD6 F6A4201C 5BDBD010 061C4F0A 14A80003 4D10BA4E
D21637ED 6F84C35A 2A3E6F15 D14EDA71 B29D0A2F 65B8783B 145EDA50 2712EDA4
2DF122F0 52867182 97B6641A AC72494B 3C19B05E 52025EF0 9296F849 C34A4AE2
15C75B0A EA052F29 18270A2F 2D19A570 69496018 1B925809 C6A4208C 6352100A
D6A4500A D6410008 D2100A17 04901804 3C20D948 52004158 077AAC71 A0C21074
822CB880 A4C2025C B3002608 D02A0871 865A1668 ADC213BD 8281BB50 54688302
0ABB21A2 F73B2596 46C41B7A 7FB6239C 44B6DF1D 2530CB4B 7CA40971 BCF5EE0D
022F7DBF 2A097069 FBDD4100 FED2F7AB 920097B6 8E9288C3 5B4F4100 C641C0F6
79DE044C 8DFBDD6A 105EA806 B1740A0A 30864F2A 0C3306BA 0B11CEE1 5D843463
A0BB2133 BCAA0263 A0C220D6 6F0A400C 6A84DD2A 89685591 905CA180 C4A046B8
A860810A 14A800C4 0584896A 84890A09 5C004100 26892818 B0A80013 04908424
2E894C5C 4058108A 25006AA1 58004180 A4001304 90A84081 0A208990 A8044180
13C42426 1890A800 92809288 92C07957 66A7B1E0 DD841A86 F104DC30 8D73A140
B32F0A26 6FDC84CE 913EA806 62F45A30 D04D0066 99224D49 410C9241 E2960825
81051004 CA41C0C5 0561B104 585C1006 0A16A8E2 61211898 A8404131 16925828
18581290 45128200 0A14042C 086118B8 25054B00 4569F343 41C4DBB2 3344C459
3062CA9C D1A40E52 20A00007 9A42A504 D2005203 A004638A 40AAC2D6 12E0DEC4
3686813D 6513D9AA 0D11A12B 80AE9861 08C00D30 962923CA 1849CC68 3D429288
E54DB8A0 4498C420 8A348633 A090A040 41C08201 4B000512 4D000512 4B000513
928892C0 A5065212 B0C42405 10044C0A 090A2028 2408B1C4 504A1382 01051292
084B08D6 20F195D9 2A0E0D13 AE926109 17045084 58BD45D5 58B09F25 81A20D82
A870FAA5 34C03501 890A3678 41381661 8A2009E0 9E843043 41522334 81BEB41A
2418E849 C0A44678 41B00DE4 D3960076 41C0C51D 066E31E3 4B85C72C 6689EAB1
8B2EF992 C33EB705 71C0A8C2 71714385 E252208B 494CD200 41C0A400 A554B004
A082108D 9A1B260D B339747B DA46C698 49A74569 C4B22254 DCE30561 6A2CA004
D2842808 611870A4 06410896 AAC2D613 B814221D 06218A2A E35D1591 712FDA94
32F3A54A 04AC90A0 064108F4 DA85888F 5C23605D 9198C408 0A20092C 89284A40
AA0149CC 28992225 814B4C41 0025000A 260D020A 2405200D 20350125 81350105
020A1604 28082108 A0308C82 10820149 809288A4 6041A01E 04280821 09311095
E1088B2E 08A02978 E7590491 4A104F6A B2B8CEF7 A53431A8 46B8AD4A 0B3EDB05
86F1775B 1270F45A 13CE4185 19F7A060 62F41E04 601704C5 152503AF 3D00FCE4
4B6C12AF 05E134A3 A7559170 BC8F25D0 50F1FE25 D290C409 41188652 1390C414
047825C2 A4405213 C5A560E1 4980A534 31AF3D10 86C29200 3A415078 17840D27
E8834AA5 E17AE14F DA0AD2B0 825EBB65 63536200 653671A8 1990BD5A 5568829E
A40C220D 30AA44D2 20E03C41 096CE760 EA3CE0CD 0D10A906 516381C9 67534678
E14BCA23 F303474F DA414444 91B717A5 2739CC68 E6514437 D00A7501 37C426DF
AD6551CE 73D31F55 36E327E3 9288F641 CC9F2899 716189EA 52125800 4100ED82
513C5B15 20058449 B089A560 41A02EA8 40910A20 08A036A0 24A000A4 908B4B41
5220A050 17828149 4CB3A900 E696A01E A926A070 07DC12CD C43D42A4 46C59200
2581494C D2125800 B4AC4DD1 BBB0841A 4DD840F1 EE0D84DB 9A08996A D47C175F
53528EC1 11C440FE 04389F05 204E0510 2F3EDA23 972A7243 A8C0AF1F C4E8060E
4F43F0B9 0B9B2E09 9F4BB119 5F7A1BC3 8CF5E64D B871F1DE 05F299F1 ECD7AA4B
327F3878 1A9A9267 31F82C08 0D936A61 36964F32 16377C41 A86EC03D 516C7EED
99F113CD 45790A38 BEC4B606 6AF289FB DA125050 5800580A 090A260D F3040AF2
0ACB0512 61F90444 99FF00A6 0AED3E78 1B4A8684 4AFAA4B9 E05EF91E D1BAB1B1
80CAA737 A8939471 12976A05 FD2E3E7A 5BA100BB 1B7BA865 10E7E63A 7A5B30E1
B1903516 D08CAEF1 5AB38630 69053C68 8A5E1090 4FBA91F5 21761DD7 D8961AF9
CBA40370 F4694A1B 9BC8A735 7103DC3E C1C6CF9E 8DE91623 A34EE757 6572A982
66144FAA 42F87F76 E8A2C8DF 0D9FF7BB 2D99B370 F629084F B1A990A0 0066936F
AA130BF7 51204DF6 F3DD6A84 4B511793 0A09DC10 178681F9 584090A9 203E7736
5B23E2B1 DB8A513C A960D210 17930A70 25810510 C42018D0 DC4008AF 05024A85
3502715A 30882581 35720A4B 00AD6041 C082612C 05844980 82F109CD 2E99B1B0
1C41282E E74380A5 6072A430 2606A2E0 DD74C0F0 A554CE62 4F4127B8 AD5CD03F
148E4BCE 76DECB58 35F90E5C 13FA0F29 C78B9A63 0D416FDF 8262C273 E2AEC2C1
1D713241 4173E82C 284435CE 13C4B98C A506F1E5 9200DB8B DF926122 E98D0A94
B8FF0010 0A772FE0 86A26FB1 CF8A222F D1BBDFA9 70174AA9 46ED2446 0D7109E7
2218B73E F4A43A63 89C7DD8E F0C7937C 6D19E55F 38BEC414 5C100A05 84DB92A1
B004EE73 41CC4FF1 844DA5A0 21283432 5A23930C 1084BAE0 2E2848CF 8A811EA9
54E8A554 129D9EDC 229C222F 1FA83884 27696031 5A66E6F3 F37E5363 206339E8
A24994F0 721DA815 ECE21475 11F8C94F 0AB712B9 18BEB0DF 8662EF44 1B3E8F87
AF4DA1E0 463EFE4D 6230C3EB BDB865C9 0C33BCFF 00963F55 27977406 DFCD4DED
5C855488 36FEC135 6E7182EB 75BCD84D 9B387924 F03BC75D FA13F81B 020343F7
3770BEA5 37C1EF7C 791ED1BF CC274115 1AE75F38 F1DEF0AC 1934B5F2 45260E30
0037A906 09C74B78 47F1546A 84CCD60A C56B2199 222699C1 283F044C 4A100428
084F2189 380F0A19 4B8C6118 98AD18C5 A5201E39 9E04EAD2 12CDE44B 4C628200
0A53711F 0A260584 E741F08C 330490A8 805EC0A1 7066F2F1 D8007341 A06D6108
2108A000 D48D6A84 E64A0341 000512E3 49805030 24058499 E1492C5E 08D33395
E158586E 084DF6D1 2FE74B8C DB785667 1FA46C79 D848E596 994C6339 CF45B059
4F50C467 2A3EC881 FEBB843D 16B335E1 0AB17D72 BE54C83D 31E3B85C 13E3067E
D1FF00A0 5067A2EE 7C1F250D 8A0A8141 D0B74AE9 6C4AFD8C E6EEDD9A 1917FBAC
9910FCA4 43616BC0 17043CF9 5A225BC0 B70DC1CA E66DAA9B 793B0938 328F8680
FD0BC7FD DD3A14BF FF00AC72 9F6E99B1 B02D183F 8D82109B 6A841E84 A62E5F41
A831DA23 74F7A454 90A9A071 380427B8 04278800 4170824B 70149D3E DAB1718B
EEEDEF5D B3A19FB0 84A63268 F7DD4A86 EA8372E7 3AED0964 615104F1 6745A5F5
02658E9C EB8EEF7F AB5BA453 A1A0473F A1997344 A83AF621 A9FC4EA5 65529CEF
9E7C5B66 85F64FCD FB15B449 60619DFD 775EA582 391BA1C5 1FCCF559 752B12C4
29F3D2EF FE4045B6 31548ADF FBD82456 C0DF7EDA E5282223 D6EFA21D 44E8B6C0
BF24CE0C 8CAF55B7 33F2C688 4C1BF7D7 8F7AACA4 9A10C78C BBBBA067 F1C340DD
71667241 9CDB13C9 558D7C99 47C02DA2 CEC3CCF7 E0860BDB 7A09A8B5 0F6A908C
D4BFD386 1BC3DC90 6EA7F0EC D958EC33 D29EAF3D 233177A6 C27433C0 BF351096
61739EC4 CC63F75B 84D38926 9963109E 042D260D 13CB0DE4 2A0D4341 C0935F4A
E2051C6A E43A078D BE14C33B 317E41B0 ED24F8AC 08A000C5 A705B3B0 AD28685E
8A721682 42C51FE8 8643F0EC 2840DDCE 9698C4D4 4D58CCE2 3714C71C 0448ADD3
92B809E4 4980E349 4830E34D 507C0505 3C19C408 0A75A054 C5B97ECF D3AA43B3
F387D250 BF2CCFFF 00DD414B B05D81B0 FF0057F7 A3BA919A DC4752FC F1772F9A
639F903F 51BFCB05 D4BDB17D 6BA2C8EF 241FE883 4A960A17 5F0AF2E1 2A466741
91EEA20D 008B6A83 685E15A4 CC5AA286 25755B50 A415D0EF 49A51CDC 8D67A2D4
93345F0A 60FF00BB 45641C84 E262CF4F 2A6D7173 16CB3D32 1564D386 D2B50A36
5D8A71B2 EE62E083 4330B8EE F163935C 23A589F9 A4469D98 DC6077B7 009EDC23
FA0D67B7 25B00A5C D2B85E71 0F0ADB50 419C2108 5E61190A 49987F54 AF356128
761BA4C2 E3F7EEE8 C11F8C0A 70C60CEC D4122F8D A33D815E 8C9AE240 B960E36F
50D4ECE8 D4402F3E E4E878BE 8459A117 245C22E1 B1309EF4 59A8D984 5F722F0A
AEB6B13B 3A292259 7881A099 7F51A3F8 693012F1 547CDB86 8C185687 51188BE9
A4FB35F4 AD856968 D62FAF76 0F518624 973A7ADC AF156630 56C647FD 8F35A862
3449E7FE FEE3A264 A8BD45F7 BC20D31F B532B0E2 19C108AF 06F7BB14 15249725
F9B983AF 1547E294 B05E8AF1 CB395F5A 2FF1F23F 84E635F1 A25D3957 16B985FF
003B5537 F3664C0C E14BC5E5 DCE0CDD7 1384BA98 A9301592 A83C17C4 EC3C7336
8BAA33AB 1414C918 5410013E 9E84BA90 C4240DE3 16F3A150 47412152 13502061
19243562 2C2D8128 89280960 92A82C36 ED28C64C 1C5F0AC2 BF6880FE 042778E3
4BA0CC05 82B24982 D0580A36 179E14C3 3AF7A1C0 6C0EF83E 0AE9F513 F73104EE
B32228FA 066008A0 A0A04072 4380C405 B25020A0 00F6325A 1331A98C 4F81FD4C
A83A018D 8BFCA530 9D3C67A0 9A6DD814 648009E7 F9A43946 81AF35E0 15BBB7C7
4BEE662A 625DEE9A 84C5BA2B 71BCD163 2ED93C9D 7CB6E02C FA0F2DD2 826FE0FB
3CF416FD BF2A46E8 191D2697 F92F98F9 6F86724E F3D2DF1D 3536E596 67B13DBF
4B0CF4C9 F8A4B731 FEE8B3BB 2592CDC4 8B0AF9D7 90AB99A2 168F0503 6C92F049
E5A70D96 96B0F854 6E09478D 76A43AB2 4BB1785B B2F0AD12 3415AC83 5DA050CC
026A8005 865283B8 14260512 970AEA95 60D786B0 60D78650 1174A430 09824058
AF3F84DB 0138185C 1374149F 2E4AEBD6 006382C1 6678D85B 62EB0E5E 2FFF00DB
548D272D 50A8D2CF C73CADB8 2B55A124 9701E0DC 74EBF256 042B5A24 CF38F8A7
4CBED8DA 0A0E9BBF EB955F81 5ACCC14A BA81DE18 8F65C75C 8DF831FF 0030C835
7F803BD1 98950707 E349E532 31B07F67 4655C51A 24CEC4C7 3ABE15B7 A83C776A
7464AF65 C92A6E12 ADA3DF1C A5C65478 8A1097DC 741A8623 BAAEF30E 43007CF1
DEEF5115 12FA23F0 2EDAABC1 3879CF3F 844B81FF 00B65162 CB2A47E5 4B8C6B38
D3587534 11753F41 B8C8446A 88596867 9F747E45 368E549C 6A36FE29 670A1B9B
6A84E60A 70179EA8 548641F0 169B0AE9 066A020A 20092C28 D7305B13 C5F6E349
80E586B2 153784B5 90A92AE2 72E69200 CD19AD99 C12C4EA1 A06EC192 A1B08426
35626D31 0F432152 4098C9F7 E086621E F96F86D1 5C0C4F0A 6771302D 2848DC40
CE414141 310BFDEC 2885CD35 02A5B0C0 2E09EA62 82B06173 E2B2B3E1 7843D68B
4605B298 BBD19A8D E8161C78 FF00EA19 DA5CFCE6 4D503C87 FE14C51E C9A890DD
D09EC4B8 E0DEAE82 E10ADBA3 2DE2C282 D005C935 52530BF6 DE7B43CA E307FDE9
49CEF4D3 5CFCBF53 62186C83 414C72B0 C49442B3 C117351B C7DB88DB 6B6D78E2
BB85D559 52B7D330 E6B73D9B E5FCD41C 25597CA1 C6139EF8 6CD93C09 6692C9CF
3A67F25A B3198C58 2F4D670A FB3611E7 A464C949 4C9F5033 F117E08C DE1486E5
9241F2E6 4DC0830A BA68820D 240DD4CA B1BB05F5 03AE54B8 84BAB8DE 844B41A8
E1CBC805 25080EBB A7A15427 BD8AF70C F85E049F F517E945 4C76CCF3 58E34737
DFE57A64 D3325F22 7913CA82 2BF58236 D8FB58D4 DCD79923 4EE8B5FA 5A561B6B
3AC338C9 9FD81874 7324D389 6F81EF92 F0BF4B19 67B14FED A208342C 16E88624
023FF044 7C3EA52F 8937FB2B B3BCC9F0 9F7635DC 209BA6A8 404DB73A A4461DFB
EAF3A0AC 6C8C13BB E8A66928 02868CBE AFA85D33 E1644441 26CA3C49 872F2C3E
F153646A 1D4E8DE5 136D191A F16D4B93 6CEEB0DE E46CE70D F6E6C11D 36B39F98
F86F9A98 90ACFF00 5140DE4D 93DE04B7 CCC4A73D 8B9B70D7 82117143 CC7C30E8
6E096014 FE04EEA3 190A4960 2C3501D7 82028210 B33501D9 8AD008D7 86F0040A
6301517A 269309EE B325A22E 0D30E7E5 8F0AA580 D19219DE 22E2AE34 8BE60AC7
1C840B6A 020AC53C 773D714B 4153027E C0A06052 40B80448 5C137043 68522031
A8500AD9 A73542F3 A004D42D 4ABE8D10 4A2526DF 82109DFF 00B641D8 F26E7341
8C5ED00E 675A16BF 44B1795B B331CCAB A080D39E 8D41385E 4F4AF347 C43D7103
1FFCA439 87DB30AD 2881AD26 6B28D783 6A66F2A4 A05DE0F1 5894CA46 72BCBEE4
4C3F4C96 0EA70D66 EDA980F3 A216CC78 F26D1915 21D93889 F6CFA028 540A7561
198A822A 3EC82008 D6905C15 592E730F 0AD8B3B0 5F0ABB4C E582D10D 46170495
E00A1418 841AE349 2010A9A0 8B1E0409 261827B8 7B4351AA 00824FE1 DB34E1FD
594028DC F174349F 255EC1B6 3DAE94C1 1FA8E934 A6878822 2CAC632E 13A8BC29
BDD9A47A 2FE8C8D0 9DD75BC2 6D42785E 8EBAA848 683347BE 2C6C5915 1BB96E8E
445679CB 87E16C4B 5EE86CC7 5FB3E0A8 E5BD84CF 96275191 69C3EC89 F3AC2B5E
6391EEAC FB5A2314 B16DE3E9 49272836 BF17AF4D A119C374 BF5D4A66 460E3321
6C6063EF 55E59EE1 AF30B210 FF006D3A 9D784B0B 1EA2519F BD4F9A4E 56371AEB
274751C5 C8E52D40 97D1AACE D42E638A CC66A6CA 36DE50EC FD1E4378 CCBBC021
30CF62D9 986F287E DBB331EC 4359CF82 0BB785D8 CD7ADB61 71C3A3B0 8F6E28E6
288ACCA4 300DE6FE 15C4F909 CB25D148 DC208B66 088B3542 D6100B9B 2E080173
BF4331CC F1180AE9 16375F0A C71CAB08 6EE04BD0 60830A26 D60AFC49 E61CC4E9
14BDD79A 413A060A 260DF582 9B0A2605 12FB5860 26D7ED4D 21C10510 5C038B99
41859309 DD2E2893 28283457 308BE66F 0A9348FC BF43504C CDF7BB14 C32C6E28
9BB891CF B633DB84 E586E10A 00EFDE30 15D5587C 41A80B89 F6FE5591 AE73BC5F
62B819CE CF5C2F3F EDD97CCE 689F43C5 F9BAD08D ED3841EE 56CE890E 785B3254
C487B387 5C229F9B 74605F4A A6AAD03F 928DFCAD B0F9A754 3F98ABB8 3089176D
99C11DB1 F9E48671 23CEB3F9 A6A04B68 3FC47807 C525C174 D6F5A575 436F1724
0E674A96 16339E14 E33874DB 1529E0A3 35516D2C D641C532 D490A8E2 F402FE5A
6069CE41 C5E964E2 870A16AD 190A470A 19E749C0 705A2371 169D4168 723E14E5
3863FF00 5BE46EE7 ECD53CF6 3EC4F966 7C5A32A4 363F2547 D09F8A33 DF0E5E3F
7C34A8E5 9EB6BD61 6163835E F7A4DC4B E85960B3 BC8BDED2 E286F09D 6DEE2299
7D69EF45 B738F86B AEA429FA 1F19958B 6F537EEE F3FC78C1 8351F9C2 78DE12CD
88CD745F CFBA55C4 F89641B1 268907C8 F3A05388 DFAD38EB 9C80D1A2 D38AB781
6FD10B72 CDBDF9A7 E2F5D26B 32DD17DF 4FAA4BC4 DE050991 F7F866D3 BAF3771A
4A9778F2 C136A864 4AD6E89B 5CB63122 1A09F92E 510D59E8 7135CCD8 A47EB18C
AA1BC8A6 F26ED12F FF00FCF5 6D6ACE9D 82F71382 92359A7B AB6CD6D4 5B7566E7
EC891C3D A866650B BBB53BD2 71F1428C 6F23FF00 51D5ECF6 36835F71 6E9E4DD7
92603A17 F8A426B1 2FDA33F3 57E02E19 7AAB72A4 66B55032 B498DC23 57146D18
B8A870AC 7241918E 41004B41 5240B814 D7201885 B305128B FF00A628 93541CF1
5C049F85 DB92710B 499C6EB1 FF00200A D834EF50 C409914A 05060561 31F9A446
AE82AF25 A21CDC50 8533DE14 733177F1 6728E662 745A1017 E3F5A426 0D13DE04
CA62FDA6 905E7141 5116630D F482DC4B 11ACE2ED 82F11273 DF4FA2E4 FBCBF781
EFA264AA 2C6F9A53 150B3704 B0FC5B50 70A6900B 766D1886 E2374F2A 1CEC73F9
6FA688BB B18F3D33 9FE8DF96 61E2CDA0 75D2243C 03963AE3 64B1A599 A2C94C3C
EF41B069 0AC9768F 9639161E 716D6A6E ACC9543E 3D4371AC ABD85C33 E215DDEB
DE94FA04 5C101650 100B3572 0DF4B95B D390DF0F DCED4DCC 9FCB58DE A45C921B
E7365419 C55D603D 236EA971 43CAE317 73AF5B61 F14B7B15 0CAF251B AAAA890A
0D5316DD AB0DB390 841AF7A1 06814A43 41E06F71 418CC113 848B8C15 5CF4927A
4BC1BBB7 DA22FE41 B459D383 9A5BD893 494BD089 FF005F1D 172FE02F 7025E559
3C9D30F6 8E51FBA1 B64978FC 1D01DFE9 648E382F AA6E9879 2BF916E7 AC044E10
7413F575 362E7B9E 5B9A3759 C0F39236 377AF11E 852F6247 E8BCAF17 959D3224
23F78D29 4BA83289 48CEE6EB 86BA1529 03CBC75C F414CB3D 8D17DE9A 625D9E2B
A4D8D44B A125ED48 6E74D213 EBC5F12C A25F336F 47A7D02F DB83AAE0 14F982BE
CF9A998E F102FF00 5F05F307 63E64E05 E215BB96 390BC9A8 70B76086 32ADC0BA
03218ACC E496B015 FB5323D2 1203B7A1 3059E810 78A764A8 33348AF2 49C40556
AC721EC4 6591F8A6 C09F549C 4F0ABA1B 37EFDC30 6E26EF41 C0820166 18681E04
37505050 40580062 45570AFC 89E6D7F3 5923E6B1 874AB3B0 A9704762 86513C9E
04EAE2D7 8682B357 0ABA080A B94FB1A8 4690A870 16178465 B15C20D0 2A892798
6B289754 FCDB5078 41002511 E35014FD AC385B02 8B363DA8 2614841B 906F6A56
0291F3EF AA46548C F30E44E7 41410C76 BF4FC6B0 4D775E84 2D2C8A41 A8C8449F
82727F36 375536E3 570DD54F 85E70DD5 FDCE1D16 FD8C14A9 40B971E8 4DF0DD8E
810A9385 C9AF0DF1 1382E065 83474A96 AC62DC4B EE76CECE B11304B7 131314C3
2A05B1C6 3CE94F8C 4D830AFB 47A5346E 218ABC89 E6D3A138 B3905EBF 3D713B71
F9A554B6 CD07CF9E A1E84AA6 489EC4D8 05CB2628 38EF5004 5B8EF173 A6907F4C
B11F6D28 2AAE85F4 FD150A9B B6A0E30D B32DCB74 9C98C1EB 778A5A1A 176F8A79
B1DB5032 E5E5062F DB744E86 8BB7E13E 5513DE8F 3D123449 59A482BF FD8F5F14
3DE1556F 982060BF 08EF57B3 A1A5BF30 66F32E32 1F3A048F 15F1ADB7 57AA4E23
6F3C298E 67F8FF00 D19A6F36 E8223259 3D77DCCB E75163CE A6AAE096 078FFD5C
824CEAB7 13B092CE A62E986E 4483EE00 BA133B8E B13EEF6F D061F14B 885D3EFB
5EC4ECE3 4AE907F5 2EDC7492 7B5BA8AE F367AEB5 A1CF34A0 35C4FC9D D05C95C1
383714D9 CE33CC5C 7592797B 919BF4A6 67137E88 CEC825F2 CD3138C4 93264178
AC816F6A F4A2B17C DA402F58 40BF8C93 9E04EA3C 20899F44 5C402F98 04CAD250
8582210D C52D8135 000A3043 00670A16 0438A860 625440D5 50208DE6 AF266E71
F3A414CC F25E044C 2E2847F0 1A0A0682 109341B0 163304EA 721E1432 3B5C6028
37042808 0B261885 E65023C2 F21E1424 17142205 22F5B92D 0ABEC53C 6FDA32F4
66589F50 22DF1DFB D2156108 AA50223A 8168172D 08C01F04 B2B8E893 4AA5144F
6A84D6DC 408D0500 FF00BE25 D2B2B0F8 A4B0B1C4 BC89301D 06D815A7 2DA22ED7
9239164B 9C0B0EBA 8DA1B969 1AE12C3E 0F6F0AEA 15E3FEA4 700B997A 4E543CE9
4BC6B290 FF0010DC 13F31483 EFEE9299 B7DB6808 D38E4145 549E1475 A80D6787
9A638E52 23E248DC 3343D250 D5A84B9C A0B5E00C 4B41585C 204DF6E4 4D31CC43
319D861B A23AD1A9 C275D37C C7DBDC32 842F5736 73727F8E 71C3F389 19E4B36E
79924AA6 9729B2F2 7FFBA3F9 34868BFF 0013635D 53B1D1C1 190134DF 0EFD183A
89F936CD 779D75BE 744BF0AA 1AF96630 EFA526F9 4B72AEEB 36EBCC17 EFAB7AAD
9FF0AEED 36E77CDF 6D6AAAB8 AE4A66DC FF00789F 55A26823 1CBBB73A 364B16FF
00D250F3 8654C351 AB694481 EF1ECA9F E85E643C C807DEAE 2C297E70 A0363298
133C6BA2 9F99D9A3 035124FF 00872D4D 5D271A67 FADBE43A 5E88B0D7 DFD0C16F
728DCD58 0EB0CF55 4A4616C3 C344852E 7CED2A3E D8A2269F B04D15CC 750B24C6
5C55CCDB 59380277 0AD211B9 756D99F9 42641F54 9C6FB616 F759035E 3410E149
CC3534EB 49D8645D 110B2D86 03ABD00C 77A630C9 767EC4AC 3E6919CA 85CF0DB6
8E522224 896C2D02 5730B1A9 4637685E 0AC78C57 30A054B0 A8501692 28A00441
C0C40584 896AF482 06E04D70 D238E14D 9C0B0625 40D25098 14125C30 E0928892
004900E6 41A08EE6 1FC4E907 AC0D71D0 ED4F503C 22096054 2378A838 2A73342F
A2B46E0D 70DA0304 9251CCB1 8A0BB744 621F5526 D3CA00A3 15ACF2D6 1127B325
0B9F6CEF 5765136E 61280D25 F11972DD 5162BD12 B93AAA4D 7CCDA180 43CC3E76
0BCE2553 84934A65 8AE3493C 89F7CF70 5162790D F48F5123 D71D4B8C B1A866C5
1A042D0B CE36DB94 AA240E36 DA32D440 9EC4E9B7 7041A87F 445EA6C8 FA162392
19CC222E 99A23CAF 45A92F68 1DC4C588 71305B40 8A6FF02D 895B34E3 16ED2897
6EF3C805 E3B65F32 8CE5B98A 238D5542 FF005160 19197279 847D5998 5B548099
42845A13 A8B9D101 4974D750 229B749A 7F8AA396 2997D8DD 8B9A4EF2 A93C40BE
F49D195F 891AA1D6 CF81AF5D B7B391BF B7DF193E EE0E5435 3F63B5B5 4966C3EB
19E75564 B5D61128 96F0E0D8 F45991A2 5BF749C8 0BFF00E9 762FBA64 25797F94
2286FBF1 7FA6D09E A450185E FF00C0B9 B6D3E4B9 54CE6C03 D36A413D 2F525CDA
4A02D88B CCBAE44E BF937752 11F21FA4 F3A0FCB9 8C9D35EE 43D0FB27 894DB711
9727FF00 C75D6AE8 F756359B 1178F197 9BDAE237 C3F367D4 61171CCF AEE0A996
CE73EF50 45443A6E 43EF5764 30976F0A D834AE82 81FB5830 5D47227E 0DE743CC
E304733D F0C705D3 8621145E A8309D19 9FF7DE35 235E328D FBED0AFC 29D33C06
EF5F205E 441A17ED 19AA884B A1827841 F049E500 0A3477D2 23E6482E 19A35010
47E286A2 3E3B5C50 D8DC4037 E0DC3025 C00DD52C 282418C8 6A465C9C 4F0A53C0
2DB05800 732218DD B05C1386 72D39A31 8AFDA999 A3989BBF 25E09760 B52D89EA
A3191418 C4C72AD6 41985E24 0E35D148 2E092C99 A3F1FF9D
        </binaryData>
      </image>
      <text name="B_2_SEC2" minWidowLines="1" templateSection="main">
        <textSettings spacing="0"/>
        <geometryInfo x="2.18750" y="0.12500" width="1.37500" height="0.31250"
        />
        <visualSettings fillBackgroundColor="r100g100b100"
         lineForegroundColor="white"/>
        <textSegment>
          <font face="helvetica" size="16" bold="yes" italic="yes"
           underline="yes" textColor="blue"/>
          <string>
          <![CDATA[Capgemini]]>
          </string>
        </textSegment>
      </text>
      <field name="F_DATE1_SEC2" source="CurrentDate" minWidowLines="1"
       spacing="0" alignment="right" templateSection="main">
        <font face="helvetica" size="12" bold="yes" italic="yes"
         underline="yes" textColor="blue"/>
        <geometryInfo x="7.18750" y="0.31250" width="1.00000" height="0.19788"
        />
        <generalLayout horizontalElasticity="variable"/>
      </field>
      <text name="B_PAGENUM1_SEC2" minWidowLines="1" templateSection="main">
        <textSettings justify="right" spacing="0"/>
        <geometryInfo x="5.03125" y="10.55212" width="3.21875"
         height="0.19788"/>
        <textSegment>
          <font face="helvetica" size="12" bold="yes" italic="yes"
           underline="yes" textColor="blue"/>
          <string>
          <![CDATA[Page &<PageNumber> of &<TotalPages>]]>
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
  <reportPrivate defaultReportType="tabBrkLeft" versionFlags2="0"
   templateName="C:\DevSuiteHome_1\reports\templates\abhi_group.tdf"
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
