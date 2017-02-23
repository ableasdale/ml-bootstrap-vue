xquery version "1.0-ml";

module namespace bootstrap = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap.xqy";

declare function bootstrap:row($content) as element(div) {
    element div {attribute class {"row"}, $content}
};

declare function bootstrap:h2($content as xs:string, $sub as xs:string) {
    element h2 {$content || " ", element small {attribute class {"text-muted"}, $sub}}
};

declare function bootstrap:h3($content as xs:string, $sub as xs:string) {
    element h3 {$content || " ", element small {attribute class {"text-muted"}, $sub}}
};

declare function bootstrap:h4($content as xs:string, $sub as xs:string) {
    element h4 {$content || " ", element small {attribute class {"text-muted"}, $sub}}
};

declare function bootstrap:table() as element(table) {
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>File</th>
                <th>Type</th>
                <th>Length</th>
                <th>Last Modified</th>
            </tr>
        </thead>
        <tbody>
            {for $i in xdmp:filesystem-directory(xdmp:modules-root())/dir:entry
            return element tr {
                element td {element a {attribute href {"/" || $i/dir:filename}, $i/dir:filename}},
                element td {$i/dir:type},
                element td {$i/dir:content-length},
                element td {$i/dir:last-modified}
            }}
        </tbody>
    </table>
};


declare function bootstrap:item-select($seq as xs:string*, $arg1 as xs:string, $arg2 as xs:string, $left as xs:boolean, $alt as xs:string) as element(div) {
    element div {attribute class {"dropdown"},
        element button {
            attribute class {"btn btn-default dropdown-toggle"},
            attribute type {"button"},
            attribute id {"select"},
            attribute data-toggle {"dropdown"},
            attribute aria-haspopup {"true"},
            attribute aria-expanded {"true"},
            "Choose ", element span {attribute class {"caret"}}
        },
        element ul {
            attribute class {"dropdown-menu"}, attribute aria-labelledby {"select"},
            element li {attribute class {"dropdown-header"}, "Available Files:"},
            for $x in $seq
            return
                if($left)
                then (element li {element a {attribute href {"?"||$arg1||"="||$x||"&amp;"||$arg2||"="||$alt}, $x}})
                else (element li {element a {attribute href {"?"||$arg1||"="||$alt||"&amp;"||$arg2||"="||$x}, $x}})
        }
    }
};

declare function bootstrap:form-submit-button($name as xs:string) as element(button) {
    element button {
        attribute type {"submit"},
        attribute class {"btn btn-default"},
        $name
    }
};

declare function bootstrap:footer($text as xs:string) as element(footer) {
    <footer class="footer">
        <div class="container">
            <p class="text-muted">{$text}</p>
        </div>
    </footer>    
};

declare function bootstrap:create-input-element($type as xs:string, $class as xs:string, $name as xs:string, $id as xs:string) as element(input) {
    element input {
        attribute type {$type},
        attribute class {$class},
        attribute name {$name},
        attribute id {$id}
    }
};

declare private function bootstrap:alert-user($level, $message, $is-dismissible) {
if ($is-dismissible)
then (
    element div {
            attribute class {("alert " || $level || " alert-dismissible" )},
            attribute role {"alert"},
            element button {
                attribute class {"close"}, 
                attribute data-dismiss {"alert"}, 
                element span {
                    attribute aria-hidden {"true"}, "&times;"}, 
                    element span {attribute class {"sr-only"}, "Close"}},                
            $message
    }
)
else (
    element div {
        attribute class {("alert " || $level)},
        attribute role {"alert"},
            $message                
    }
)
};

(: 4 classes of visual alert to notify user :)

declare function bootstrap:success-notification($message, $is-dismissible as xs:boolean) {
    bootstrap:alert-user("alert-success", $message, $is-dismissible)
};

declare function bootstrap:info-notification($message, $is-dismissible as xs:boolean) {
    bootstrap:alert-user("alert-info", $message, $is-dismissible)
};

declare function bootstrap:warning-notification($message, $is-dismissible as xs:boolean) {
    bootstrap:alert-user("alert-warning", $message, $is-dismissible)
};

declare function bootstrap:danger-notification($message, $is-dismissible as xs:boolean) {
    bootstrap:alert-user("alert-danger", $message, $is-dismissible)
};
  
  
declare function bootstrap:create-badge-link($href as xs:string, $linktext as xs:string) as element(a) {
    element a { attribute href {$href}, element span {attribute class {"badge"}, $linktext}}
};

declare function bootstrap:create-href-link($href as xs:string, $linktext as xs:string) as element(a) {
    element a { attribute href {$href}, $linktext }
};

declare function bootstrap:create-tag-badge-link($href as xs:string, $linktext as xs:string) as element(a) {
    element a {attribute href {$href}, element span {attribute class {"badge"}, element span {attribute class {"glyphicon glyphicon-tag"}, " "}," ",$linktext}}
};

declare function bootstrap:create-glyphicon-badge-link($href as xs:string, $linktext as xs:string, $glyphicon as xs:string) as element(a) {
    element a {attribute href {$href}, element span {attribute class {"label label-primary mgn-right"}, element span {attribute class {$glyphicon}, " "}," ",$linktext}}
};

declare function bootstrap:create-thead-element($headers as xs:string*) as element(thead) {
    element thead {
        element tr {
            for $header in $headers
            return element th {attribute class {"text-center"}, $header}
        }
    }
};