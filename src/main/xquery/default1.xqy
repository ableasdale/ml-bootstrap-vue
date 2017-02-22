xquery version "1.0-ml";

import module namespace view = "http://www.xmlmachines.com/ml-bootstrap-vue/view.xqy" at "/lib/view.xqy";
import module namespace config = "http://www.xmlmachines.com/ml-bootstrap-vue/config.xqy" at "/lib/config.xqy";

declare option xdmp:output "method = html";

view:bootstrap(
    <div class="container">
        <div class="row">
            <h2>Under development <small class="text-muted">{$config:APPLICATION-TITLE}</small></h2>
            {element pre {fn:current-dateTime()},


let $x := <elem>{json:unquotedString('<b-alert :show="true" state="success" dismissible>This is an alert</b-alert>')}</elem>
return xdmp:to-json-string($x/node()),

let $x :=json:unquotedString('<b-alert :show="true" state="success" dismissible>This is an alert</b-alert>')
return 
xdmp:to-json-string($x),


let $x := <elem>{json:unquotedString('<b-alert :show="true" state="success" dismissible>This is an alert</b-alert>')}</elem>
return xdmp:to-json($x/node()),

let $x :=json:unquotedString('<b-alert :show="true" state="success" dismissible>This is an alert</b-alert>')
return 
xdmp:to-json($x),


            xdmp:to-json('<b-alert :show="true" state="success" dismissible>This is an alert</b-alert>'),
                let $x := <elem>{json:unquotedString('<b-alert :show="true" state="success" dismissible>This is an alert</b-alert>')}</elem>
return $x/node()
            }
        </div>
    </div>)