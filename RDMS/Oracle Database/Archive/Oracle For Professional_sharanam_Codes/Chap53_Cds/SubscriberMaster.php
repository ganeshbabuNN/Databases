<?php
/* Variables to hold the connection parameters. */
	$username = "Vaishali";
	$password = "vaishali";
	$host = "Linux";

/* Connecting to the database */
	$conn = oci_connect($username, $password, $host) or die("Connection Failed");
?>
<!-- HTML code block rendering the actual page begins. -->
<HTML>
	<HEAD>
		<TITLE>Subscriber Master Form</TITLE>
	</HEAD>
<!-- BODY section. -->
	<BODY BGCOLOR="pink">
<!-- SCRIPT tag holding JavaScript under the BODY section. -->
		<SCRIPT LANGUAGE="JavaScript">
		/* JavaScript function to set contents of form fields */
		/* This function accepts parameters (The column values available on the SubscriberMaster GRID) and transfers the same to the form fields (usually textboxes) on the SubscriberMaster Form for editing. It is called when a record is selected for modification. */
			function setEditMode(varAccountNo, varFirstName, varLastName, varBuildingName, varRoad, varArea, varCity, varPincode, varCountry, varContactNo, varStatus)
			{
			/* Transfers the value held by all the parameters to the hidden variables. */
				document.frmSubscriberMaster.hidAccountNo.value = varAccountNo;
			/* Transfers the value held by the parameters to the form fields thus making it available for updation. */
				document.frmSubscriberMaster.txtFirstName.value = varFirstName;
				document.frmSubscriberMaster.txtLastName.value = varLastName;
				document.frmSubscriberMaster.txtBuildingName.value = varBuildingName;
				document.frmSubscriberMaster.txtRoad.value = varRoad;
				document.frmSubscriberMaster.txtArea.value = varArea;
				document.frmSubscriberMaster.txtCity.value = varCity;
				document.frmSubscriberMaster.txtPincode.value = varPincode;
				document.frmSubscriberMaster.txtCountry.value = varCountry;
				document.frmSubscriberMaster.txtContactNo.value = varContactNo;
				document.frmSubscriberMaster.txtStatus.value = varStatus;
			/* Switches the form mode to update. This is done by setting the value of hidden variable named hidMode to U. This variable will be used by the dosql.php file to understand the mode in which the form is and accordingly perform appropriate database operation. */
				document.frmSubscriberMaster.hidMode.value = 'U';
			/* Disables the delete button available on the SubscriberMaster.php form. This is done to avoid any delete operation while the form is in update mode. */
				document.frmSubscriberMaster.cmdDelete.disabled = true;
			}

		/* JavaScript function to clear the form fields */
		/* This function is called when the clear button is clicked and performs the re-initialization process for the form fields. */
			function setMode()
			{
			/* Clears the value held by the hidden variable defined in the setEditMode. */
				document.frmSubscriberMaster.hidAccountNo.value = "";
			/* Clears the value held by the form fields. */
				document.frmSubscriberMaster.txtFirstName.value = "";
				document.frmSubscriberMaster.txtLastName.value = "";
				document.frmSubscriberMaster.txtBuildingName.value = "";
				document.frmSubscriberMaster.txtRoad.value = "";
				document.frmSubscriberMaster.txtArea.value = "";
				document.frmSubscriberMaster.txtCity.value = "";
				document.frmSubscriberMaster.txtPincode.value = "";
				document.frmSubscriberMaster.txtCountry.value = "";
				document.frmSubscriberMaster.txtContactNo.value = "";
				document.frmSubscriberMaster.txtStatus.value = "";
			/* Traversing through all the form element to clear the check boxes */
				for (i=0; i<document.forms[0].elements.length; i++)
				{
				/* Checking if the current element in this iteration is a check box. */
					if(document.forms[0].elements[i].type == "checkbox")
					{
					/* Checking if the check box is checked */
						document.frmSubscriberMaster.elements[i].checked = false;
					}
				}
			/* Switches the form mode back to insert. This is done by setting the value of hidden variable named hidMode to I. This variable will be used by the dosql.php file to understand the mode in which the form is and accordingly perform appropriate database operation. */
				document.frmSubscriberMaster.hidMode.value = "I";
			/* Enables the delete button available on the SubscriberMaster.php form. */
				document.frmSubscriberMaster.cmdDelete.disabled = false;
			}

		/* JavaScript function to prepare the form to delete selected record(s) */
		/* The function setDelMode() sets the form mode to Delete (D). Further transfers the control to the formDeleteValues() function. This function is called directly when the Delete button is clicked. */
			function setDelMode()
			{
			/* This is done by setting the value of hidden variable named hidMode to D. This variable will be used by the dosql.php file to understand the mode in which the form is and accordingly perform appropriate database operation. */
				document.frmSubscriberMaster.hidMode.value = 'D';
			/* Calls a function named formDeleteValues with a parameter to hold list of author ids for deletion. This function generates a string of comma-separated identities of the records selected for deletion. If no records are selected, a message indicates the same. */
				formDeleteValues('hidSelDel');
			}

		/* JavaScript function to delete a string of data retrieved */
		/* The formDeleteValues() function is called to create a list of records that are to be deleted. This list holds the Identity numbers of the records in a comma separated form. If no records were selected from the Tabular GRID on the form, a message indicates the same. This function is called when the DELETE button is clicked. */
			function formDeleteValues(hidden) 
			{
				var selValues = "";
			/* Traversing through all the form element. */
				for (i=0; i<document.forms[0].elements.length; i++) 
				{
				/* Checking if the current element in this iteration is a check box. */
					if(document.forms[0].elements[i].type == "checkbox") 
					{
					/* Checking if the check box is checked */
						if (document.forms[0].elements[i].checked == true)
						{
						/* Calculating the string of the records selected for deletion which is comma-separated */
							selValues = selValues + document.forms[0].elements[i].value + ",";
						}
					}
				}
			/* Verifying whether any record is selected for deletion */
				if (selValues.length < 1)
				{
				/* A message prompting the user to select data for delete */
					alert("Please choose records you wish to delete.");
				}
				else
				{
				/* Removing the last comma from the string which contains comma-separated elements for deletion */
					selValues = selValues.substring(0, selValues.length-1);
				/* Evaluating the expression and returning the result */
					eval("document.forms[0]." + hidden + ".value = '" + selValues + "';");
				/* Submitting the form */
					document.forms[0].submit();
				}
			}

		/* JavaScript function to verify form fields are not left empty */
		/* This function is called when the form data is about to be submitted. This function verifies that the form fields are not left blank. If left blank an error message indicates the same.  */
			function chkBlanks()
			{
			/* Traversing through all the form elements. */
				for (i=0; i<document.forms[0].elements.length; i++)
				{
				/* Checking if the current element in this iteration is a text box */
					if(document.forms[0].elements[i].type == "text")
					{
					/* Checking if the current element in this iteration is empty. */
						if(document.forms[0].elements[i].value == "")
						{
						/* A message informing the user about the field being left empty */
							alert("Data left empty");
						/* Setting the focus to the field left empty */
							document.frmSubscriberMaster.elements[i].focus();
						/* Returning the value as false */
							return false;
						}
					}
				}
			}
		</SCRIPT>
	<!-- SCRIPT tag holding JavaScript under the BODY section ends. -->

	<!-- Form Section holding Data and Control objects begins. -->
	<!-- The page is designed using HTML tags. The FORM tag holds ACTION pointing to the dosql.php file and onSubmit pointing to the chkBlanks javascript function declared and defined earlier. -->
	<!-- Initializing a form object, which will submit data captured on the form to the PHP processing file. --> 
		<FORM ACTION="dosql.php" METHOD="post" NAME="frmSubscriberMaster" onSubmit="return chkBlanks();">
		<!-- Defining hidden form elements -->
		<!-- Form Hidden Variable to hold the Acoount Number. -->
		<!-- A Hidden Form Element to hold AccountNo (Usually PRIMARY KEY COLUMN). This is required in dosql.php (The Processing File) file to identify which record was selected for update (In the WHERE CLAUSE of the UDPATE statement). -->
			<INPUT NAME="hidAccountNo" SIZE="2" TYPE="hidden">
		<!-- Form Hidden Variable to determine the form operation mode. Default, being Insert operation. -->
		<!-- A Hidden Form Element to hold the form mode. This is required in dosql.php (The Processing File) file to identify the form mode and accordingly take necessary action. -->
			<INPUT NAME="hidMode" TYPE="hidden" VALUE="I">
		<!-- Form Hidden Variable to hold comma separated values (Identities) selected for deletion. -->
		<!-- A Hidden Form Element to hold list of Account Numbers selected for deletion. -->
			<INPUT NAME="hidSelDel" TYPE="hidden">

		<!-- Parent Table begins. -->
		<!-- Outer Table Code Begins. -->
			<TABLE ALIGN="center" BGCOLOR="pink" BORDER="0" CELLPADDING="0" CELLSPACING="0" NAME="tblOuter" WIDTH="100%">
			<!-- Parent Table: First Row. -->
				<TR HEIGHT="300" VALIGN="top">
					<TD ALIGN="center" BORDER="1" COLSPAN="10"> 
						<BR>
						<!-- First Child Table to hold the d/e Form objects, to Capture / Control data begins. -->
						<!-- HTML Code-spec follows for designing the form fields -->
						<TABLE ALIGN="center" BORDER="1" BORDERCOLOR="skyblue" CELLPADDING="2" CELLSPACING="0" NAME="tblFirstChild" WIDTH="100%">
						<!-- First Child Table: First Row: Column to hold the Form Title. -->
						<!-- Inserting table row to display the form title -->
							<TR BGCOLOR="black">
								<TD ALIGN="left" COLSPAN="2">
								<!-- Formatting the font of title -->
									<FONT SIZE="2" COLOR="white"><B>Subscriber Master</B></FONT>
								</TD>
							</TR>
						<!-- First Child Table: Two columns, first column to hold the label and the second to hold the data capture object that captures data. -->
						<!-- Inserting table row that holds table data label and text box of First Name -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">First Name:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="35" NAME="txtFirstName" TYPE="text" SIZE="25">
								</TD>
							</TR>
						<!-- Inserting table row that holds table data label and text box of Last Name -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">Last Name:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="35" NAME="txtLastName" TYPE="text" SIZE="25">
								</TD>
							</TR>
						<!-- Inserting table row that holds table data label and text box of Building Name -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">Building Name:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="255" NAME="txtBuildingName" TYPE="text" SIZE="40">
								</TD>
							</TR>
						<!-- Inserting table row that holds table data label and text box of Road -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">Road:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="255" NAME="txtRoad" TYPE="text" SIZE="25">
								</TD>
							</TR>
						<!-- Inserting table row that holds table data label and text box of Area -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">Area:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="255" NAME="txtArea" TYPE="text" SIZE="25">
								</TD>
							</TR>
						<!-- Inserting table row that holds table data label and text box of City -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">City:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="35" NAME="txtCity" TYPE="text" SIZE="25">
								</TD>
							</TR>
						<!-- Inserting table row that holds table data label and text box of Pincode -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">Pincode:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="35" NAME="txtPincode" TYPE="text" SIZE="25">
								</TD>
							</TR>
						<!-- Inserting table row that holds table data label and text box of Country -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">Country:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="35" NAME="txtCountry" TYPE="text" SIZE="25">
								</TD>
							</TR>
						<!-- Inserting table row that holds table data label and text box of Contact Number -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">Contact Number:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="35" NAME="txtContactNo" TYPE="text" SIZE="25">
								</TD>
							</TR>
						<!-- Inserting table row that holds table data label and text box of Status -->
							<TR>
								<TD ALIGN="right" WIDTH="25%">Status:</TD>
								<TD ALIGN="left">
									<INPUT MAXLENGTH="35" NAME="txtStatus" TYPE="text" SIZE="25">
								</TD>
							</TR>
						<!-- First Child Table: Last Row: Columns to hold data control objects. -->
						<!-- Inserting table row that holds inputs for Submit and Reset buttons -->
							<TR>
								<TD COLSPAN="2" ALIGN="right">
									<INPUT NAME="cmdSubmit" TYPE="submit" VALUE="Save">
									<INPUT NAME="cmdReset" onClick="setMode();" TYPE="button" VALUE="Cancel">
								</TD>
							</TR>
						</TABLE>
					<!-- First Child Table ends. -->
						<BR>
			<!-- PHP code block to retrieve records from the SubscriberMaster table. -->
				<?php
				/* Storing the query in a variable */
					$query = "SELECT * FROM SubscriberMaster ORDER BY FirstName";
				/* Parsing the SQL query */
					$resultSet = oci_parse($conn, $query);
				/* Executes the SQL query */
					oci_execute($resultSet) or die("Execution Of The SQL Query failed");

				/* Fetching Data into an temporary array to get the number of rows returned by the query. */	
				/* Parsing the SQL query */
					$temp_resultSet = oci_parse($conn, $query);
				/* Executes the SQL query */
					oci_execute($temp_resultSet) or die("Execution Of The SQL Query failed");

				/* Returns the number of rows in a result set */
					$numrows = oci_fetch_all($temp_resultSet, $temp);

				/* Verifying whether any rows are present in the database*/
					if ($numrows)
					{
				?>
					<!-- A tabular layout is created to hold the records retrieved. This is done using if condition which traverses through the records retrieved from the table via the SQL query. While traversing through the loop the COLOR code for each row displayed in the tabular layout is switched between two different colors. This is done to improve the readability. -->
					<!-- Second Child Table to hold the tabular layout (GRID), to display / control data captured begins. -->
						<TABLE ALIGN="center" BORDER="1" BORDERCOLOR="skyblue" CELLPADDING="0" CELLSPACING="0" WIDTH="100%" NAME="tblSecondChild">
						<!-- Second Child Table: First Row: Columns to hold the header row along with the Delete button. -->
						<!-- Inserting a table row that holds table data -->
							<TR BGCOLOR="black">
								<TD WIDTH="12%" ALIGN="center"><INPUT NAME="cmdDelete" onClick="setDelMode();" TYPE="button" VALUE="Delete"></TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>First Name</B>
									</FONT>
								</TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>Last Name</B>
									</FONT>
								</TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>Building Name</B>
									</FONT>
								</TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>Road</B>
									</FONT>
								</TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>Area</B>
									</FONT>
								</TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>City</B>
									</FONT>
								</TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>Pincode</B>
									</FONT>
								</TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>Country</B>
									</FONT>
								</TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>Contact Number</B>
									</FONT>
								</TD>
								<TD>
									<FONT COLOR="#FFFFFF">
										<B>Status</B>
									</FONT>
								</TD>
							</TR>
				<!-- PHP code block to populate data in the tabular layout using a loop. -->
				<!--Initializing and running a while loop that traverses through the records extracted earlier -->
					<?php
					/* Initializing i to 0 */
						$i = 0;
					/* Setting up a loop */
						while($row = oci_fetch_array($resultSet))
						{
							if ($i%2)
								$bgcolor = "PINK";
							else
								$bgcolor = "LIGHTPINK";
					?>
						<!-- Second Child Table: Second Row: Columns to set data and assign colors to odd and even rows. -->
						<!-- Inserting table row that asigns color to each row of retrieved data -->
							<TR BGCOLOR="<?php echo $bgcolor;?>" onMouseOver="this.bgColor='#EFEEC9';"  onMouseOut="this.bgColor='<?php echo $bgcolor;?>';">
								<TD>
								<!-- Inputting checkbox to which value of AccountNo retrieved from the database is assigned -->
									<INPUT NAME="chk<?php echo ($i);?>" TYPE="checkbox" VALUE="<?php echo $row['ACCOUNTNO'];?>">
								</TD>
							<!-- Retrieving data by using function  and Inserting a link to the data -->
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['FIRSTNAME'];?>
								</TD>
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['LASTNAME'];?>
								</TD>
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['BUILDINGNAME'];?>
								</TD>
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['ROAD'];?>
								</TD>
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['AREA'];?>
								</TD>
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['CITY'];?>
								</TD>
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['PINCODE'];?>
								</TD>
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['COUNTRY'];?>
								</TD>
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['CONTACTNO'];?>
								</TD>
								<TD onMouseDown="setEditMode('<?php echo $row['ACCOUNTNO'];?>','<?php echo $row['FIRSTNAME'];?>','<?php echo $row['LASTNAME'];?>','<?php echo $row['BUILDINGNAME'];?>', '<?php echo $row['ROAD'];?>','<?php echo $row['AREA'];?>','<?php echo $row['CITY'];?>','<?php echo $row['PINCODE'];?>','<?php echo $row['COUNTRY'];?>','<?php echo $row['CONTACTNO'];?>','<?php echo $row['STATUS'];?>');">
									<?php echo $row['STATUS'];?>
								</TD>
							</TR>
				<!-- Loop and the Second Child table ends. -->
					<?php
						/* Incrementing the loop.*/
							++$i;
					/* Closing the loop  */
						}
					?>
						</TABLE>
				<!-- The Oracle connection is closed and the Parent Table ends. -->
					<?php
					/* Closing the if condition. */
						}
					/* Close the connection */
						oci_close($conn);
					?>
					</TD>
				</TR>
			</TABLE>
		</FORM>
	<!-- Form to hold Data and Control objects ends. -->
	</BODY>
</HTML>