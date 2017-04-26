<%
    def form_action(base):
        return '<form action="{}/create">'.format(base)
%>

<!DOCTYPE html>
<html>
<head>
  <title>OpenID Certification OP Test Tool Configuration</title>
    <link rel="stylesheet" type="text/css" href="${base}/static/theme.css">
</head>
<body>
<!-- Main component for a primary marketing message or call to action -->
<div class="inp">
  <h2>OpenID Connect Provider Certification</h2>
        <br>

        <p>
            This is a tool used for testing the compliance of an OpenID Connect Provider with the
            OpenID Connect specifications. In order to start testing you need to configure a test
            instance. Enter the issuer URL to the OpenID Connect Provider you want to test.
        </p>
        <br>
  ${form_action(base)}
    <h3>Issuer URL (without .well-known):</h3>
    <input type="text" name="iss">
    <br>
    <h3>An identifier of this specific configuration in the case that you want to have more then one</h3>
    <input type="text" name="tag" value="default">
  <br>
    <p>
      Choose what your OP supports:
      <table border="1">
            <tr><th>WebFinger</th><td style="width:30px"><input type="checkbox" name="webfinger"></td></tr>
            <tr><th>Dynamic Provider Information discovery</th><td><input type="checkbox" name="discovery"></td></tr>
            <tr><th>Dynamic Client Registration</th><td><input type="checkbox" name="registration"></td></tr>
    </table>
  <br>
  <h3>Choose a return type</h3>
  <br>
    <table broder="1">
            <tr><th style="width:100px">Return type</th><td>
                <input type="radio" name="return_type" value="C"> Code <br>
                <input type="radio" name="return_type" value="I"> IdToken <br>
                <input type="radio" name="return_type" value="IT"> IdToken Token <br>
                <input type="radio" name="return_type" value="CI"> Code IdToken <br>
                <input type="radio" name="return_type" value="CT"> Code Token <br>
                <input type="radio" name="return_type" value="CIT"> Code IdToken Token
            </td></tr>
        </table>
      </p>
    <input type="submit" value="Submit">
  </form>
</div>
</body>
</html>