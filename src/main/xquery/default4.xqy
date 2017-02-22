
xquery version "1.0-ml";

declare option xdmp:output "method = html";

xdmp:set-response-content-type("text/html; charset=utf-8"),
'<!DOCTYPE html>',
let $x := <html>
<h1>HTML</h1>
<REPLACE>{text{'<b-button size="size" :variant="variant" click="clicked">Click Me!</b-button>'}}</REPLACE>
</html>
let $r := $x//REPLACE
let $q := xdmp:quote($r/string())
return (xdmp:quote($x),$r,$q,xdmp:unquote($r),replace( xdmp:quote($x) , "&lt;REPLACE>(.*)&lt;/REPLACE>",$q))