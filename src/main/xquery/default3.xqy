xquery version "1.0-ml";

declare option xdmp:output "method = html";

xdmp:set-response-content-type("text/html; charset=utf-8"),
'<!DOCTYPE html>',
<html>
<h1>HTML</h1>
{

let $x := <REPLACE>{text{'<b-button :size="size" :variant="variant" @click="clicked">Click Me!</b-button>'}}</REPLACE>
let $r := $x//REPLACE/node()
let $str := string($x)
return replace( $str , $r , xdmp:unquote($r))

}
</html>