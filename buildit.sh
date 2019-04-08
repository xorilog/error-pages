#!/bin/bash

for i in 400,"Bad Request" 401,"Unauthorized" 402,"Payment Required" 403,"Forbidden" 404,"Not Found" 405,"Method Not Allowed" 406,"Not Acceptable" 407,"Proxy Authentication Required" 408,"Request Timeout" 409,"Conflict" 410,"Gone" 411,"Length Required" 412,"Precondition Failed" 413,"Payload Too Large" 414,"URI Too Long" 415,"Unsupported Media Type" 416,"Range Not Satisfiable" 417,"Expectation Failed" 418,"I'm a teapot" 421,"Misdirected Request" 422,"Unprocessable Entity" 423,"Locked" 424,"Failed Dependency" 426,"Upgrade Required" 428,"Precondition Required" 429,"Too Many Requests" 431,"Request Header Fields Too Large" 451,"Unavailable For Legal Reasons" 500,"Internal Server Error" 501,"Not Implemented" 502,"Bad Gateway" 503,"Service Unavailable" 504,"Gateway Timeout" 505,"HTTP Version Not Supported" 506,"Variant Also Negotiates" 507,"Insufficient Storage" 508,"Loop Detected" 510,"Not Extended" 511,"Network Authentication Required"; do
IFS=","; set -- $i;

cat << EOF > ./${1^^}.html
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>${2^^} - (╯°□°）╯︵ ┻━┻ </title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
  <link rel="stylesheet" href="https://static-errors.xophe.eu/css/style.css">
</head>
<body>
<div class="error-page">
  <div>
    <h1 data-h1="${1^^}">${1^^}</h1>
    <p data-p="${2^^}">${2^^}</p>
  </div>
</div>
<div id="particles-js"></div>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js'></script>
    <script  src="https://static-errors.xophe.eu/js/index.js"></script>
</body>
</html>
EOF

done
