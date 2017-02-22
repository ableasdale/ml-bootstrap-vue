xquery version "1.0-ml";

import module namespace view = "http://www.xmlmachines.com/ml-bootstrap-vue/view.xqy" at "/lib/view.xqy";
import module namespace config = "http://www.xmlmachines.com/ml-bootstrap-vue/config.xqy" at "/lib/config.xqy";
import module namespace bootstrap-vue = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap-vue.xqy" at "/lib/bootstrap-vue.xqy";

declare option xdmp:output "method = html";

view:bootstrap(
    <div class="container" id="app">
        <div class="row">
            <h2>Under development <small class="text-muted">{$config:APPLICATION-TITLE}</small></h2>
            {
                element p {element pre {fn:current-dateTime()}},
                bootstrap-vue:button(),
                bootstrap-vue:alert(),
                bootstrap-vue:button-group(),
                bootstrap-vue:dropdown()
            }    
        </div>
    </div>)

