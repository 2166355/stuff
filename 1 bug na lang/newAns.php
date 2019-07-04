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

    ?>
    <div id="wrapper2">
    <h1>Webtech Quiz</h1>
    <div id = "content">
    </div>
    <br>
    <div id = "score"></div>
    <div>
    <br>
        <button id="tryagain" onclick="window.location.href='./ask'">Try Again?</button>
    </div>

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

            if(b[x][0].answer.toUpperCase().trim()==d[x+1].toUpperCase().trim()){
                score = score+= 1;
                createDiv.setAttribute("style", "background-color:#5cdb5c");
            }else{
                createDiv.setAttribute("style", "background-color:#ff8484");
            }
            
        }
        document.getElementById("score").innerHTML = "You got: "+score +"/"+ <?php echo $qn?>;
        
    </script>
    </body>
</html>