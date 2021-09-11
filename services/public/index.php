<?php

function
about_html()
{
return <<<'ABOUT'
<form>
<button
 type="submit"
 style="width:30%;height:60px;color:white;background-color:blue;font-size:100%"
 formaction="/SERVER/PHP/about_page.php">About</button>
</form>
ABOUT;
} // about_html

function
documents_html()
{
return <<<'DOCUMENTS'
<form>
<button
 type="submit"
 style="width:30%;height:60px;background-color:blue;font-size:100%"
 formaction="/SERVER/PHP/documents_page.php">Documents</button>
</form>
DOCUMENTS;
} // documents_html

function
lectures_html()
{
return <<<'LECTURES'
<form>
<button
 type="submit"
 style="width:30%;height:60px;background-color:blue;font-size:100%"
 formaction="/SERVER/PHP/lectures_page.php">Lectures</button>
</form>
LECTURES;
} // lectures_html

function
assignments_html()
{
return <<<'ASSIGNMENTS'
<form>
<button
 type="submit"
 style="width:30%;height:60px;background-color:blue;font-size:100%"
 formaction="/SERVER/PHP/assignments_page.php">Assignments</button>
</form>
ASSIGNMENTS;
} // assignments_html

function
quizzes_html()
{
return <<<'QUIZZES'
<form>
<button
 type="submit"
 style="width:30%;height:60px;background-color:blue;font-size:100%"
 formaction="/SERVER/PHP/quizzes_page.php">Quizzes</button>
</form>
QUIZZES;
} // quizzes_html

function
examinations_html()
{
return <<<'EXAMINATIONS'
<form>
<button
 type="submit"
 style="width:30%;height:60px;background-color:blue;font-size:100%"
 formaction="/SERVER/PHP/examinations_page.php">Examinations</button>
</form>
EXAMINATIONS;
} // examinations_html

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>BUCASCS320-2017-Fall</title>
<style>
  body {
  margin-top: 8px;
  margin-bottom: 8px;
  margin-left: 0px;
  margin-right: 0px;
  font-family: Helvetica, Arial, sans-serif;
  background-color: #dfdfdf; /* whitish gray */
}
</style>
</head>

<body>

<div
 style=
"text-align:center;
 background-color:#ffffff">
<div
 style="font-weight:bold;font-size:250%;padding-top:10px">
BU CAS CS 320
</div>
<div
 style="font-weight:bold;font-size:225%;padding-top:2px">
Concepts of Programming Languages<br>
</div>
<div style="font-weight:bold;font-size:150%;padding-top:6px;padding-bottom:10px">Semester: Fall 2017</div>
</div>

<div
 style="font-weight:bold;font-size:200%">
<table
 style="width:60%;margin:auto">
  <tr><td style="text-align:center"><hr></hr></td></tr>
  <tr><td style="text-align:center"><?=about_html()?></td></tr>
  <tr><td style="text-align:center"><hr></hr></td></tr>
  <tr><td style="text-align:center"><?=documents_html()?></td></tr>
  <tr><td style="text-align:center"><hr></hr></td></tr>
  <tr><td style="text-align:center"><?=lectures_html()?></td></tr>
  <tr><td style="text-align:center"><hr></hr></td></tr>
  <tr><td style="text-align:center"><?=assignments_html()?></td></tr>
  <tr><td style="text-align:center"><hr></hr></td></tr>
  <tr><td style="text-align:center"><?=quizzes_html()?></td></tr>
  <tr><td style="text-align:center"><hr></hr></td></tr>
  <tr><td style="text-align:center"><?=examinations_html()?></td></tr>
  <tr><td style="text-align:center"><hr></hr></td></tr>
</table>
</div>
  
</body>

</html>
