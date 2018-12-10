<%-- 
    Document   : addphone
    Created on : Dec 10, 2018, 9:08:26 AM
    Author     : Nobita Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Phone</title>
    </head>
    <body>
        <h3>Add Phone</h3>
        <form action="addPhone" method="POST">
            Name: <br/> <input required type="text" name="name" placeholder="iphone"/> <br/>
            Brand:  <br/>
            <select name="optionBrand">
                <option>Apple</option>
                <option>Samsung</option>
                <option>Nokia</option>
                <option>Others</option>
            </select> <br/>
            Price: <br/> <input required type="text" name="price" placeholder="23000000"/> <br/>
            Description: <br/> <textarea required name="desc" placeholder="iphoneX 90%"></textarea> <br/>
            <input type="reset" value="Reset">
            <input type="submit" value="Add Phone">
        </form>
    </body>
</html>
