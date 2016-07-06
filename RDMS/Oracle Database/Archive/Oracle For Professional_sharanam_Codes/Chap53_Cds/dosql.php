<?php
/* Variables to hold the connection parameters. */
	$username = "Vaishali";
	$password = "vaishali";
	$host = "Linux";

/* Connecting to the database */
	$conn = oci_connect($username, $password, $host) or die("Connection Failed");

/* Checking if the form is currently in the INSERT mode. */
	if ($hidMode == "I")
	{
	/* Generating an Identity number for the author. */
		$query = "SELECT MAX(AccountNo)+1 ANO FROM SubscriberMaster";
	/* Parsing the SQL query */
		$resultSet = oci_parse($conn, $query);
	/* Executing the SQL query */
		oci_execute($resultSet) or die("Execution Of The SQL Query failed");

	/* Retrieving the new author identity number form the resultSet */
		$getID = oci_fetch_array($resultSet);

		if (!$getID[0])
		{
			$getID[0] = 1;
		}

	/* Forming a query to insert data */
		$query = "INSERT INTO SubscriberMaster (AccountNo, FirstName, LastName, BuildingName, Road, Area, City, Pincode, Country, ContactNo, Status) VALUES('" . $getID[0] . "', '" . $_POST['txtFirstName'] . "', '" . $_POST['txtLastName'] . "', '" . $_POST['txtBuildingName'] . "', '" . $_POST['txtRoad'] . "', '" . $_POST['txtArea'] . "', '" . $_POST['txtCity'] . "', '" . $_POST['txtPincode'] . "', '" . $_POST['txtCountry'] . "', '" . $_POST['txtContactNo'] . "', '" . $_POST['txtStatus'] . "')";
	/* Parsing the SQL query */
		$resultSet = oci_parse($conn, $query);
	/* Executes the SQL query */
		oci_execute($resultSet) or die("Execution Of The SQL Query failed");

	/* Transferring the control back to the SubscriberMaster.php file */
		header("location:SubscriberMaster.php");
	}

/* Checking if the form is currently in the UPDATE mode. */
	if ($hidMode == "U")
	{
	/* Executing a SQL query to Update the SubscriberMaster table. */
		$query = "UPDATE SubscriberMaster SET FirstName='" . $txtFirstName . "', LastName='" . $txtLastName . "', BuildingName='" . $txtBuildingName . "', Road='" . $txtRoad . "', Area='" . $txtArea . "', City='" . $txtCity . "', Pincode='" . $txtPincode . "', Country='" . $txtCountry . "', ContactNo='" . $txtContactNo . "', Status='" . $txtStatus . "' WHERE AccountNo=" . $hidAccountNo;
	/* Parsing the SQL query */
		$resultSet = oci_parse($conn, $query);
	/* Executing the SQL query */
		oci_execute($resultSet) or die("Execution Of The SQL Query failed");

	/* Transferring the control back to the SubscriberMaster.php file */
		header("location:SubscriberMaster.php");
	}

/* Checking if the form is currently in the Delete mode. */
	if ($hidMode == "D")
	{
	/* Building and executing a SQL query to Update the SubscriberMaster table. */
		$query = "DELETE FROM SubscriberMaster WHERE AccountNo IN(" . $hidSelDel . ")";
	/* Parsing the SQL query */
		$resultSet = oci_parse($conn, $query);
	/* Executing the SQL query */
		oci_execute($resultSet) or die("Execution Of The SQL Query failed");

	/* Transferring the control back to the SubscriberMaster.php file */
		header("location:SubscriberMaster.php");
	}
?>