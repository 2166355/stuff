<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles.css">
        <title>Webtech Quiz</title>
    </head>
    <body>


    <div id="wrapper">
        <h1>Webtech Quiz</h1>
        <h2>Fill in the Blanks</h2>
        <hr>
            <form name = "ask" method = "POST" action = "./indiv.php">
                <p id="stopic">Select Topic:</p>
            <select name = "qtopic" id = "qtopic">
                <option value="quizHTML">HTML</option>
                <option value="quizCSS">CSS</option>
                <option value="quizHTTP">HTTP</option>
            </select><br>
        <p id="nQuestion">How Many Questions?
        <input type= "number" name = "qNum" min = "1" max = "20" required><br>
            <input type= "hidden" name = "counter" value = "0">
            <input type= "hidden" name = "anss" value = "">
            <input type= "hidden" name = "uAns" value = "<?php $uAns = array(); print base64_encode(serialize($uAns)) ?>">
            <input type= "hidden" name = "posts" value = "<?php $posts = array(); print base64_encode(serialize($posts)) ?>">
        <input id="submit1" type = "submit">
        </form>    
    </div>


    </body>
</html>