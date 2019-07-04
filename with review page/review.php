<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles.css">
        <title>Webtech Quiz</title>
    </head>
    <body>
    <?php 

        $qs = $_POST["posts"];
        $q = unserialize(base64_decode($qs)); 

        $qn = $_POST["qNum"];
        $aa = $_POST["uAns"];
        $as = unserialize(base64_decode($aa));

        array_push($as,$_POST["anss"]);  
    ?>
    <div id="wrapper1">
    <h1>Webtech Quiz</h1>
    <div id = "content">
    </div>
    <br>
    <div id = "score"></div>
    <div>
    <br>

    </div>
    <form id="quiz" action="./indiv.php" method="post">
        <input type = "hidden" name = "qNum" id = "qNum" value = "<?php echo $qn?>">
        <input type = "hidden" name = "qtopic" value = "<?php echo $_POST["qtopic"]?>">
        <input type= "hidden" name = "counter" value = "0">
        <input type= "hidden" name = "anss" value = "">
        <input type= "hidden" name = "uAns" value = "<?php reset($as); print base64_encode(serialize($as)) ?>">
        <input type = "hidden" name = "posts" value = "<?php print base64_encode(serialize($q)) ?>">
        <button id="tryagain" onclick="window.location.href='./quiz.php'">Go back to quiz</button>
    </form>           

    <form id="quiz" action="./newAns.php" method="post">
        <input type = "hidden" name = "qNum" id = "qNum" value = "<?php echo $qn?>">
        <input type = "hidden" name = "posts" value = "<?php print base64_encode(serialize($q)) ?>">
        <input type = "hidden" name = "uAns" id = "uAns" value = "<?php print base64_encode(serialize($as)) ?>">
        <input id="submit3" type="submit" value="Submit">
    </form>

</div>

    <script type="text/javascript">
        var score = 0;
        var b = <?php echo json_encode($q)?>;
        var d = <?php echo json_encode($as)?>;
        for(var x = 0; x< <?php echo $qn?>;x++){
            var createDiv = document.createElement("div");
            createDiv.setAttribute("id","divcont");

            var q1 = document.createElement("p");
            var c = document.createTextNode(b[x][0].qNum+": "+b[x][0].question);
            var br = document.createElement("br");
            q1.appendChild(c);

            createDiv.appendChild(q1);

            var q3 = document.createElement("p");
            var da = document.createTextNode("Your answer: "+d[x+1]);
            q3.appendChild(da);
            createDiv.appendChild(q3);
            
            createDiv.appendChild(br);

            document.getElementById("content").appendChild(createDiv);
            
        }
        
    </script>
    </body>
</html>