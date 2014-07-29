<!DOCTYPE html>
<html lang="en">

<head>
    <!-- CSS -->
    <link href="css/forms.css" rel="stylesheet">
</head>

<body>
    <h3>Junior Registration Form</h3>

    <div class="forms">
        <form name="input" action="index.html" method="post">
            <ul>
                <li>
                    <ul class="name_list">
                        <li>First name:<br>
                            <asp:TextBox id="" runat="server">sdfsdfsdf</asp:TextBox>
                        </li>
                        <li>Surname:<br>
                            <input type="text" name="surname">
                        </li>
                    </ul>
                </li>

                <li>Date of Birth:<br>
                    <input type="date" name="dob">
                </li>
                
                <li>
                    <input type="radio" name="sex" value="male" checked> Male
                    <input type="radio" name="sex" value="female"> Female
                </li>
                
                
                <li>Address:
                    <input type="text" name="address">
                </li>
                    
                <li>Telephone:
                    <input type="tel" name="tel">
                </li>
                
                <li>E-mail:
                    <input type="email" name="email">
                </li>
                
                <li>School:
                    <input type="text" name="school">
                </li>
                
                <li>Year:
                    <input type="number" name="quantity" min="1" max="13" value="1">
                </li>

                <li>School next year:
                    <input type="text" name="nextSchool">
                </li>
                    
                <li>Grade last year:
                <br>
                    <input type="number" name="quantity" min="1" max="16" value="1">
                </li>
                
                <li>Volunteer as a Coach or Manager
                    <input type="checkbox" name="volunteer" value="true">
                </li>

                <input type="submit" value="Submit" onclick="">

        </form>
    </div>
</body>

</html>