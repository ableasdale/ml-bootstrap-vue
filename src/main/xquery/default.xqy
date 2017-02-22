xquery version "1.0-ml";

import module namespace view = "http://www.xmlmachines.com/ml-bootstrap-vue/view.xqy" at "/lib/view.xqy";
import module namespace config = "http://www.xmlmachines.com/ml-bootstrap-vue/config.xqy" at "/lib/config.xqy";

declare option xdmp:output "method = html";

view:bootstrap(
    <div class="container">
        <div class="row">
            <h2>Under development <small class="text-muted">{$config:APPLICATION-TITLE}</small></h2>
            {element pre {fn:current-dateTime()},
            view:alert()}
        </div>
    </div>)