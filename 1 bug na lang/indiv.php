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

        if(count($uAns)>=$qnum1+1){
            $uAns = array();
        }

        if(count($posts)<$qnum1){
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

            } else {
                echo "0 results";
            }
            $conn->close();
        }
        array_push($uAns,$_POST["anss"]); 

        if($_POST["trigger"]==1){
            array_splice($uAns,$_POST["counter"]+1);
        }


        ?>
        <p id = "dummy"></p>
        <p id = "question"></p>
        <input type = "text" name = "anss" id = "anss" onfocus="this.value=''" placeholder="" >
        <div id = "next">
            <button type = "submit" id = "prevbtn" onclick="prev()" >Back</button><br>
            <input type = "submit" id = "nextB">
        </div>
        <div id = "hidn">
            <input type = "hidden" name = "qtopic" value = "<?php echo $topic?>">
            <input type = "hidden" name = "qNum" id = "qNum" value = "<?php echo $qnum1?>">
            <input type = "hidden" id = "counter" name = "counter">
            <input type = "hidden" name = "posts" value = "<?php print base64_encode(serialize($posts)) ?>">
            <input type = "hidden" name = "uAns" value = "<?php print base64_encode(serialize($uAns)) ?>">
            <input type = "hidden" name = "trigger" id = "trigger" value = "0">
        </div>
        <script type="text/javascript">
            var obj = JSON.parse('<?php echo json_encode($posts[$_POST["counter"]]) ?>');
            var counter = 0;
            var ctr = <?php echo $_POST["counter"]?>;
            var bound = <?php echo $qnum1?>;
            var ps;
            if(ctr==0 || ctr == bound){
                document.getElementById("prevbtn").disabled =true; 
            }else{
                document.getElementById("prevbtn").disabled =false;
            }

            if (ctr<bound-1){
                document.getElementById("quiz").action ="./indiv.php";
                document.getElementById("question").innerHTML = obj[counter].qNum +". "+ obj[counter].question+". ";
                ctr++;
                document.getElementById("counter").value =ctr;
            }else{
                document.getElementById("quiz").action ="./review.php";
                ctr++;
                document.getElementById("question").innerHTML = obj[counter].qNum +". "+ obj[counter].question+". ";
                document.getElementById("counter").value =ctr;
            }

            function prev(){
                ctr = ctr-2;
                document.getElementById("quiz").action ="./indiv.php";
                document.getElementById("counter").value =ctr;
                document.getElementById("trigger").value =1;
            }
        </script> 
    </form> 
</div>
    </body>
</html> 