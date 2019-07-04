<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles.css">
        <title>Webtech Quiz</title>
    </head>
    <body>

    <div id="wrapper">
    <h1>Webtech Quiz</h1>
    <form id="quiz" method="post">

        <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "webtech";
        
        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        } 
        $qnum1 = $_POST["qNum"];
        $topic = $_POST["qtopic"];
        
        $p = $_POST["posts"];
        $posts = unserialize(base64_decode($p));

        $u = $_POST["uAns"];
        $uAns = unserialize(base64_decode($u));

        $qnum1 = (int)$qnum1;
        $qidArr = array("0","01");
        $sql = 'SELECT qID,question,answer FROM ' .$topic. ' where qtype = "FitB" and qID not in ('.implode(",",$qidArr).')order by RAND() LIMIT 1';
        $result = $conn->query($sql);
        echo '<input type = "hidden" name = "qNum" value = "'.$qnum1.'">';
        if ($result->num_rows > 0) {
            $counter = $_POST["counter"]+1;
            while($row = $result->fetch_assoc()) {
                $qnum = $counter;
                $question = $row["question"];
                $ans = $row["answer"];
                $qID = $row["qID"];
                array_push($qidArr,$qID);
                $posts1[] = array('qid'=>$qID, 'qNum'=> $qnum,'question' => $question,'answer'=>$ans);
            }
            array_push($posts,$posts1);
            array_push($uAns,$_POST["ans"]);  

            $file = fopen("qs.json","w");
            fwrite($file,json_encode($posts));
            fclose($file);

            $file = fopen("as.json","w");
            fwrite($file,json_encode($uAns));
            fclose($file);

        } else {
            echo "0 results";
        }
        $conn->close();
        ?>
        <p id = "dummy"></p>
        <p id = "question"></p>
        <input type = "text" name = "ans" id = "ans" onfocus="this.value=''" placeholder="" >
        <div id = "next">
            <input type = "submit" id = "nextB">
        </div>
        <div id = "hidn">
            <input type = "hidden" name = "qtopic" value = "<?php echo $topic?>">
            <input type = "hidden" id = "counter" name = "counter">
            <input type = "hidden" name = "posts" value = "<?php print base64_encode(serialize($posts)) ?>">
            <input type = "hidden" name = "uAns" value = "<?php print base64_encode(serialize($uAns)) ?>">
        </div>
        <script type="text/javascript">
            var obj = JSON.parse('<?php echo json_encode($posts1) ?>');
            var counter = 0;
            var ctr = <?php echo $_POST["counter"]?>;
            var bound = <?php echo $qnum1?>;
            var ans = [<?php echo $_POST["ans"]?>];
            var ps;
            if (ctr<bound-1){
                document.getElementById("quiz").action ="./indiv.php";
                document.getElementById("question").innerHTML = obj[counter].qNum +". "+ obj[counter].question+". ";
                ctr++;
                document.getElementById("counter").value =ctr;
            }else{
                document.getElementById("quiz").action ="./review.php";
                document.getElementById("question").innerHTML = obj[counter].qNum +". "+ obj[counter].question+". ";
                
            }
        </script> 
    </form> 
</div>
    </body>
</html> 