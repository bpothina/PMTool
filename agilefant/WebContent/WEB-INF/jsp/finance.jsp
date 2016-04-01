<%@ include file="./inc/_taglibs.jsp"%>

<struct:htmlWrapper navi="finance">

<jsp:body>

<div class="structure-main-block">
<div class="dynamictable ui-widget-content ui-corner-all" id="changingPassword">

<div class="ui-widget-header dynamictable-caption dynamictable-caption-block ui-corner-all">
Financials
</div>

	<h3>Enter resource forecast</h3>

	<div style="margin: 1em 0.5em 0.5em;">
    
    <ww:form action="storeSettings.action" method="post">

    <table class="settings-table">

    <tr>     
     <td><ww:text name="Resource Name"/></td>
      <td><ww:textfield name="resource" id="resourceName" /></td>      
    </tr>
    <tr>     
     <td><ww:text name="Cost Estimate"/></td>
      <td><ww:textfield name="cost" id="cost" size="10"/> $</td>      
    </tr>
    <tr>
     <td><ww:text name="Year" /></td>
     <td><ww:textfield name="year" id="year" size="4" /> </td>
    </tr>
    <tr>
     <td><ww:text name="Month" /></td>
      
        <td><select name="month" id="month">								
								<option value="JAN">January</option>
								<option value="FEB">February</option>
								<option value="MAR">March</option>
								<option value="APR">April</option>
								<option value="MAY">May</option>
								<option value="JUN">June</option>
								<option value="JUL">July</option>
								<option value="AUG">August</option>
								<option value="SEP">September</option>
								<option value="OCT">October</option>
								<option value="NOV">November</option>
								<option value="DEC">December</option>								
							</select></td>            
    </tr>
    <tr>
     <td><ww:text name="Project Name" /></td>
      
        <td><select name="project" id="project">								
								<option value="P1">Project 1</option>
								<option value="P2">Project 2</option>
								<option value="P3">Project 3</option>
								<option value="P4">Project 4</option>
								<option value="P5">Project 5</option>
								<option value="P6">Project 6</option>
								<option value="P7">Project 7</option>
								<option value="P8">Project 8</option>
								<option value="P9">Project 9</option>
								<option value="P10">Project 10</option>																
							</select></td>            
    </tr>      
    </table>

    <ww:submit value="Save" cssClass="dynamics-button"></ww:submit>
	</ww:form>
    </div>
    
  </div>
  
  <h3>Enter project cost</h3>

	<div style="margin: 1em 0.5em 0.5em;">
    
    <ww:form action="storeSettings.action" method="post">

    <table class="settings-table">

    <tr>     
     <td><ww:text name="Project Name"/></td>
      <td><ww:textfield name="projectName" id="projectName" /></td>      
    </tr>
    <tr>     
     <td><ww:text name="Cost Estimate"/></td>
      <td><ww:textfield name="cost" id="cost" size="10"/> $</td>      
    </tr>
    <tr>
     <td><ww:text name="Year" /></td>
     <td><ww:textfield name="year" id="year" size="4" /> </td>
    </tr>
    <tr>
     <td><ww:text name="Product" /></td>
      
        <td><select name="product" id="product">								
								<option value="Pr1">Product 1</option>
								<option value="Pr2">Product 2</option>
								<option value="Pr3">Product 3</option>
								<option value="Pr4">Product 4</option>
								<option value="Pr5">Product 5</option>
								<option value="Pr6">Product 6</option>
								<option value="Pr7">Product 7</option>
								<option value="Pr8">Product 8</option>
								<option value="Pr9">Product 9</option>
								<option value="Pr10">Product 10</option>																
							</select></td>            
    </tr>        
    </table>

    <ww:submit value="Save" cssClass="dynamics-button"></ww:submit>
	</ww:form>
    </div>
    
  </div>
	
</div>

</jsp:body>

</struct:htmlWrapper>

