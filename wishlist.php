<html>
  <head><link href="santa.css" type="text/css" rel="stylesheet" media="all" /></head>
    <body>
  <div class="message">
  <h2>
    <form action ="index.php">
        <input type="submit" value="Return to start">
</form>

        Wish List of <?php echo $_GET['user'] . "<br/>"; ?>
        <?php
        $con = mysqli_connect("localhost", "phpadmin", "Linux4Ever");
        if (!$con) {
            exit('Connect Error (' . mysqli_connect_errno() . ') '
                    . mysqli_connect_error());
        }
        //set the default client character set 
        mysqli_set_charset($con, 'utf-8');
        mysqli_select_db($con, "wishlist");
        $user = mysqli_real_escape_string($con, $_GET['user']);
        $wisher = mysqli_query($con, "SELECT id FROM wishers WHERE name='" . $user . "'");
  if (mysqli_num_rows($wisher) < 1) {
            exit("The person " . $_GET['user'] . " is not found.");
        }
        $row = mysqli_fetch_row($wisher);
        $wisherID = $row[0];
        mysqli_free_result($wisher);
        ?>
 
   <center><table>
            <tr>
                <th>Wish</th>
                <th>Colour</th>
    <th>Type</th>
</tr>
<tr>
            <?php
            $result = mysqli_query($con, "SELECT wish, colour, type FROM wishes WHERE wisher_id=" . $wisherID);
            while ($row = mysqli_fetch_array($result)) {
                echo "<tr><td>" . htmlentities($row['wish']) . "</td>";
                echo "<td>" . htmlentities($row['colour']) . "</td>";
    echo "<td>" . htmlentities($row['type']) . "</td></tr>\n";
            }
            mysqli_free_result($result);
            mysqli_close($con);
            ?>
        </table></center>
</h1>
<div class="wrapper">
  <div class="face">
    <div class="hat-wrapper">
      <div class="hat">
        <div class="hat-top">
        </div>
      </div>
      <div class="hat-brim">

      </div>
    </div>
    <div class="eyes">
      <div class="eye left-eye">

      </div>
      <div class="eye right-eye">

      </div>
    </div>
    <div class="mouth">

    </div>
    <div class="beard">
      <div class="mustache">
        <div class="mustache-left">

        </div>
        <div class="mustache-right">

        </div>
      </div>
    </div>
  </div>
</div>
    </body>
</html>
