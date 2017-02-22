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