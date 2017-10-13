<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="R10_Matrix_Group_Formatting" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE7" xmlPrologType="text">
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
           order="1" oracleDatatype="number" width="22" precision="4"/>
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
           order="4" oracleDatatype="number" width="22" precision="4"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="HIREDATE" datatype="date" oracleDatatype="date"
         columnOrder="15" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Hiredate">
          <dataDescriptor expression="emp.HIREDATE"
           descriptiveExpression="HIREDATE" order="5" oracleDatatype="date"
           width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="SAL" oracleDatatype="number" columnOrder="16"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Sal">
          <dataDescriptor expression="emp.SAL" descriptiveExpression="SAL"
           order="6" oracleDatatype="number" width="22" scale="2"
           precision="7"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="COMM" oracleDatatype="number" columnOrder="17"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Comm">
          <dataDescriptor expression="emp.COMM" descriptiveExpression="COMM"
           order="7" oracleDatatype="number" width="22" scale="2"
           precision="7"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DEPTNO" oracleDatatype="number" columnOrder="18"
         width="22" defaultWidth="40000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Deptno">
          <dataDescriptor expression="emp.DEPTNO"
           descriptiveExpression="DEPTNO" order="8" oracleDatatype="number"
           width="22" precision="2"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <summary name="SumCOMMPerReport" source="COMM" function="sum" width="22"
     precision="7" scale="2" reset="report" compute="report"
     defaultWidth="90000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
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
      <frame name="M_G_DEPTNO1_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.43750" height="0.93750"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_DEPTNO1" source="G_DEPTNO1"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.00000" width="7.43750"
           height="0.75000"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="r88g0b50" linePattern="solid"
           lineForegroundColor="r88g25b0"/>
          <field name="F_DEPTNO1" source="DEPTNO1" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="0.62500" y="0.00000" width="0.62500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <frame name="M_G_EMPNO_GRPFR">
            <geometryInfo x="0.00000" y="0.18750" width="7.43750"
             height="0.56250"/>
            <generalLayout verticalElasticity="variable"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g100b100"/>
            <repeatingFrame name="R_G_EMPNO" source="G_EMPNO"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="0.37500" width="7.43750"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="r50g50b100" linePattern="solid"
               lineForegroundColor="r100g50b88"/>
              <field name="F_EMPNO" source="EMPNO" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="0.00000" y="0.37500" width="0.93750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_ENAME" source="ENAME" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="0.93750" y="0.37500" width="0.75000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_JOB" source="JOB" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="1.68750" y="0.37500" width="0.68750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_MGR" source="MGR" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="2.37500" y="0.37500" width="0.93750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_HIREDATE" source="HIREDATE" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="3.31250" y="0.37500" width="1.37500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_SAL" source="SAL" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="4.68750" y="0.37500" width="1.37500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand">
                  <conditionalFormat>
                    <formatException
                     label="(:SAL BETWEEN &apos;0&apos; and &apos;500&apos;)">
                      <font face="helvetica" size="10" textColor="r0g25b88"/>
                      <formatVisualSettings fillPattern="solid"
                       fillForegroundColor="r100g0b88" borderPattern="solid"
                       borderForegroundColor="green"/>
                    <cond name="first" column="SAL" exception="7" lowValue="0"
                     highValue="500" conjunction="1"/>
                    </formatException>
                    <formatException
                     label="(:SAL BETWEEN &apos;501&apos; and &apos;1000&apos;)"
                      >
                      <font face="helvetica" size="10" textColor="darkyellow"
                      />
                      <formatVisualSettings fillPattern="solid"
                       fillForegroundColor="custom2" borderPattern="solid"
                       borderForegroundColor="TableHeading"/>
                    <cond name="first" column="SAL" exception="7"
                     lowValue="501" highValue="1000" conjunction="1"/>
                    </formatException>
                    <formatException
                     label="(:SAL BETWEEN &apos;1001&apos; and &apos;2000&apos;)"
                      >
                      <font face="helvetica" size="10" textColor="blue"/>
                      <formatVisualSettings fillPattern="solid"
                       fillForegroundColor="magenta" borderPattern="solid"
                       borderForegroundColor="custom3"/>
                    <cond name="first" column="SAL" exception="7"
                     lowValue="1001" highValue="2000" conjunction="1"/>
                    </formatException>
                    <formatException label="(:SAL &gt; &apos;2000&apos;)">
                      <font face="helvetica" size="10" textColor="darkblue"/>
                      <formatVisualSettings fillPattern="solid"
                       fillForegroundColor="darkmagenta" borderPattern="solid"
                       borderForegroundColor="custom4"/>
                    <cond name="first" column="SAL" exception="3"
                     lowValue="2000" conjunction="1"/>
                    </formatException>
                  </conditionalFormat>
                </generalLayout>
                <advancedLayout formatTrigger="f_salformattrigger"/>
              </field>
              <field name="F_COMM" source="COMM" minWidowLines="1" spacing="0"
               alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="6.06250" y="0.37500" width="1.37500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_EMPNO_FTR">
              <geometryInfo x="0.00000" y="0.56250" width="7.43750"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="lastPage"
               basePrintingOn="anchoringObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="Totals"/>
              <field name="F_SumSALPerDEPTNO1" source="SumSALPerDEPTNO1"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="10" bold="yes"/>
                <geometryInfo x="4.68750" y="0.56250" width="1.37500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_SumCOMMPerDEPTNO1" source="SumCOMMPerDEPTNO1"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="10" bold="yes"/>
                <geometryInfo x="6.06250" y="0.56250" width="1.37500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <text name="B_Total_" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.56250" width="0.43750"
                 height="0.18750"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"/>
                  <string>
                  <![CDATA[Total:]]>
                  </string>
                </textSegment>
              </text>
            </frame>
            <frame name="M_G_EMPNO_HDR">
              <geometryInfo x="0.00000" y="0.18750" width="7.43750"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableHeading" linePattern="solid"/>
              <text name="B_EMPNO" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.18750" width="0.93750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Empno]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_ENAME" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.93750" y="0.18750" width="0.75000"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Ename]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_JOB" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.68750" y="0.18750" width="0.68750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Job]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_MGR" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="2.37500" y="0.18750" width="0.93750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Mgr]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_HIREDATE" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.31250" y="0.18750" width="1.37500"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Hiredate]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_SAL" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="4.68750" y="0.18750" width="1.37500"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Sal]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_COMM" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="6.06250" y="0.18750" width="1.37500"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Comm]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_DEPTNO1" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.62500"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Deptno1]]>
              </string>
            </textSegment>
          </text>
          <field name="F_DNAME" source="DNAME" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="1.75000" y="0.00000" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_DNAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.25000" y="0.00000" width="0.50000"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Dname]]>
              </string>
            </textSegment>
          </text>
          <field name="F_LOC" source="LOC" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="3.56250" y="0.00000" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <text name="B_LOC" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.25000" y="0.00000" width="0.31250"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Loc]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
        <frame name="M_G_DEPTNO1_FTR">
          <geometryInfo x="0.00000" y="0.75000" width="7.43750"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Totals"/>
          <field name="F_SumSALPerReport" source="SumSALPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="0.43750" y="0.75000" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_SumSALPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.75000" width="0.43750"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
          <field name="F_SumCOMMPerReport" source="SumCOMMPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="2.25000" y="0.75000" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_SumCOMMPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.81250" y="0.75000" width="0.43750"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <image name="B_1_SEC2" templateSection="main">
        <geometryInfo x="0.50000" y="0.43750" width="1.40625" height="0.37500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.40625" y="0.37500"/>
          <point x="0.50000" y="0.43750"/>
          <point x="1.40625" y="0.37500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
74946483 93167800 42007F00 00FFFFFF 183B180E CE0E3076 300C9D0C 1A6C1A98
8B98FE6F FE7FAF7F 0B0D0B8A BC8A19DB 198CED8C 0D3E0D7E 1F7E991C 998D7E8D
8B4D8B31 1731260A 26257925 17AA1723 482324D8 2432A732 97EA97B0 C6B0965A
96A388A3 00000000 00000000 00000000 00000000 00000000 00000000 00000000
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
FF003080 C1840B0A 1C388031 A2C58C01 1668B081 6084C10A 18305868 8133E043
08000874 0020A061 8F820A0C 143040A3 E7400408 0E8C5912 90E7C69B 031C1859
8317E189 830804EC F90438A0 51811A06 2859B080 A18B9C27 1E2070B2 96A0C794
2B0ECC68 C15829C9 8614BA7D FA8350A0 05050508 749A2091 87460855 563D1845
D36CC187 5B1E15FA B0626500 BC7DBA85 406080E3 00070203 C5F870C0 A2020112
921CBBF6 7A2EC9B2 0BEA0C70 20237307 C20D0C75 A031D76F D1DF35C2 00805090
89CD8C43 18258AF1 D53146A8 63E284BA 76D5EA44 D23DBA40 98212821 06AC2983
05202A5B A9600467 36145BE1 D0B0C4EE 1103148E 5B723EE8 C102E630 5AE590C4
FF4A0B2F 04508830 0387C20F B1381F99 41E24284 021C67EC 5E808371 450F1313
148DB292 010C0810 CD540018 108D6200 2810C747 0218F080 02121060 02809505
51C00A1A D670060A 1E400046 8A1E004D 97491288 00400304 0724D086 6974B023
810810E6 5C840EF4 F0E08F25 E8902E46 3E08E0AC 824A10FE DF461C88 F2EA4218
68904104 1C203263 083D4030 C50E1530 A1AA7D26 00942001 18C801CA 4F363893
1F8B3228 A023814A 09862081 49003267 583169A1 21002610 A12B8F19 A842A747
0C196F1E 4E2EA480 C20802F7 26AA9562 A9E1999E 3A2A000F 823A100D 97587A68
B790AA12 5031CD44 1C7826A6 8276F538 EA450028 52220C06 79E1D9A4 0640D823
FFA98228 B6AE8000 30C02CAE 5D7A576E 474EA825 200326C5 45E00462 9AC52E4E
AE085220 06821871 20070038 1C24080A 76B21EA4 0E205B6F 8E523816 A65B4EA8
931C9A12 9990C886 CD8B1DE7 55AE74BC 600DCA4A 59E10F00 38A2D4B6 1E74E045
80D67BF2 120EFE08 B08B583E 884E92B9 723522E8 A000D9D7 60540419 FE6BA8A6
E4203386 04107F23 84D5CB33 27C23629 E8E59E1B 0522E00C D2E4CB66 A008786C
200F2210 3264BC4D F90CA0A9 CA9A7179 BC6238F0 81CE0CFC BF20CB25 7C302191
4DFA300B A2C23903 E8870EB8 70C8865E E9F2149B 9AECCA6C BDCA7401 C0C24A20
60F5926B C85081C5 23C8C06B BD8E8830 CB79E29B F6F7817D 50657005 18404596
FFD3042C B7EEC0F6 FCF31204 0C3B78A3 DF1D1090 C9D10C30 1CEA4B6B 7420228D
5FED07F5 0100175C 20E20C29 C73E4704 1BF16798 3B4019B7 4C0A2054 A74C083E
2F67421A 0000A008 433BE3E7 94065A5B A75AD228 1EEA4AB3 4A067603 14608BB3
891C60AB AF930F40 9A30059F 08E6FA43 4F5BA83E 49001ECF 228E66CA 04AFE7DE
F47D31F4 937FF063 F0EB7BF1 95B4060A B82181D7 0584F7DE F26B835E 80612EAE
FA488FD8 83140810 200404AE 01080810 065D2080 86C11022 0300FE16 0410410C
AA10600C 6370880C 403A7200 40E7D210 404441E4 E08404C9 410808DF 301210FB
7F1160C3 0B489318 08707524 2C00C20C 06D1C219 20E18389 598A0758 F1930CE0
FF3001C3 00C10C28 824C9C30 A08F1100 53080859 2005D0D4 88047319 0756E118
08B5E00F 2C361E46 8860C706 FFA4423C 70257C10 F2C20030 210B0440 2E4E7880
43E09039 32087117 13000B17 04296A8B 29312309 68C4CF84 40A88B4C 70205C18
16C7066F 000E0C70 611D58D5 C716F0F3 2D6C706A EAC847C4 EC200F74 08D3AB17
52A14504 11100E74 3EC20E24 F4434205 46898440 A10AC6F1 1F3A2210 919C70AD
62294D9E 06008E84 5940046A 00E9481A 65EE8394 32AD0752 808712E4 AB4A0865
220548B2 184EB0BB 453CA5E5 01728BC5 98E29E87 CA6044E2 18F11E3A 05010584
ED142DD4 34416A74 E68F1140 0FEAA980 C15E1132 94DCE265 29086B14 2220977B
FFDCF847 0DE8C49F 7683F391 41804121 28D7C04A 74259AE4 004000A9 32C842EF
C329EC71 6E252900 07084090 A41DE2A5 151A93CC 9C10389E 5400860B 00508386
8079957C FE1211B9 4440A0C3 93A4ACA5 244FE99A B45AB947 9804BD08 1DF97D4A
22949A85 BC9F105E 7803D75E F466AD05 95671D83 E0831A10 47840C86 91430060
84081C29 902D68A3 41C9E111 7A74C9AF 2485EA29 6AFCC5A6 D298A194 88205EE8
04CFACF0 9B9065F8 8E278A90 D8465F08 2D648921 07490006 A6949CAF 243A2235
5ACE4DA0 3477904D 008AF848 87D856D2 B8886C70 E44D4AD0 5BC69D40 BC6DA52F
E208A252 0E206198 0880854B 1B5C4F36 467CA215 C9896F58 49DCCE30 12AC9DCB
44A53D68 C0842120 400110D7 6A1B10AB 5EDAF630 0908A3A0 04A96C5E 96E6BE8F
3C4EA002 4B8F47E2 47B8B9CD 10A37BB8 BC56E6D2 5AB7BDEE A77FBB0E D0FA877C
B4E51F60 4000B3DC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
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
    </margin>
  </section>
  </layout>
  <programUnits>
    <function name="f_salformattrigger">
      <textSource>
      <![CDATA[function F_SALFormatTrigger return boolean is
begin

  -- Automatically Generated from Reports Builder.
  if (:SAL BETWEEN '0' and '500')
  then
    srw.set_foreground_border_color('green');
    srw.set_border_pattern('solid');
    srw.set_foreground_fill_color('r100g0b88');
    srw.set_fill_pattern('solid');
    srw.set_text_color('r0g25b88');
  end if;

  -- Automatically Generated from Reports Builder.
  if (:SAL BETWEEN '501' and '1000')
  then
    srw.set_foreground_border_color('TableHeading');
    srw.set_border_pattern('solid');
    srw.set_foreground_fill_color('custom2');
    srw.set_fill_pattern('solid');
    srw.set_text_color('darkyellow');
  end if;

  -- Automatically Generated from Reports Builder.
  if (:SAL BETWEEN '1001' and '2000')
  then
    srw.set_foreground_border_color('custom3');
    srw.set_border_pattern('solid');
    srw.set_foreground_fill_color('magenta');
    srw.set_fill_pattern('solid');
    srw.set_text_color('blue');
  end if;

  -- Automatically Generated from Reports Builder.
  if (:SAL > '2000')
  then
    srw.set_foreground_border_color('custom4');
    srw.set_border_pattern('solid');
    srw.set_foreground_fill_color('darkmagenta');
    srw.set_fill_pattern('solid');
    srw.set_text_color('darkblue');
  end if;

  return (TRUE);
end;]]>
      </textSource>
    </function>
  </programUnits>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#000000"/>
    <color index="191" displayName="TableHeading" value="#046804"/>
    <color index="192" displayName="TableCell" value="#c0d9c0"/>
    <color index="193" displayName="Totals" value="#81b381"/>
  </colorPalette>
  <reportPrivate defaultReportType="masterDetail" versionFlags2="0"
   templateName="rwgreen"/>
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
