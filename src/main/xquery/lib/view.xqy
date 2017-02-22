xquery version "1.0-ml";

module namespace view = "http://www.xmlmachines.com/ml-bootstrap-vue/view.xqy";

import module namespace config = "http://www.xmlmachines.com/ml-bootstrap-vue/config.xqy" at "/lib/config.xqy";

declare function view:bootstrap($content as element(div)){
    view:bootstrap($config:APPLICATION-TITLE, $content, ())
};

declare function view:bootstrap($title as xs:string, $content as element(div)){
    view:bootstrap($title, $content, ())
};

declare function view:bootstrap($title as xs:string, $content as element(div), $additional-resource as item()*) {
    xdmp:set-response-content-type("text/html; charset=utf-8"),
    '<!DOCTYPE html>',
    <html lang="en">
        <head>
            <title>{$title}</title>
            <!-- Required meta tags always come first -->
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
            <meta http-equiv="x-ua-compatible" content="ie=edge"/>

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous"/>
            <!-- link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.css" crossorigin="anonymous"/-->
        </head>
        <body>
            {$content}
            <!-- jQuery first, then Tether, then Bootstrap JS. -->
            <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous">{" "}</script>
            <!-- script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js" integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous">{" "}</script -->
            <!-- script src="/assets/js/app.js">{" "}</script -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous">{" "}</script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous">{" "}</script>
            {$additional-resource}
        </body>
    </html>
};
