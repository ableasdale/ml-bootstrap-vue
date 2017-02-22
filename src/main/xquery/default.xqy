xquery version "1.0-ml";

import module namespace view = "http://www.xmlmachines.com/ml-bootstrap-vue/view.xqy" at "/lib/view.xqy";
import module namespace config = "http://www.xmlmachines.com/ml-bootstrap-vue/config.xqy" at "/lib/config.xqy";
import module namespace bootstrap-vue = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap-vue.xqy" at "/lib/bootstrap-vue.xqy";
import module namespace bootstrap = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap.xqy" at "/lib/bootstrap.xqy";

declare option xdmp:output "method = html";

view:bootstrap(
    <div class="container" id="app">
        
        {bootstrap:row(bootstrap:h2("UI Components", $config:APPLICATION-TITLE))}
        
        {bootstrap:row(bootstrap:h4("Buttons", "bootstrap-vue:button()"))}
        {bootstrap:row(bootstrap-vue:button())}
        
        <hr/>

        {bootstrap:row(bootstrap:h4("Alerts", "bootstrap-vue:alert()"))}
        {bootstrap:row(bootstrap-vue:alert())}

        <hr/>

        {bootstrap:row(bootstrap:h4("Button Groups", "bootstrap-vue:button-group()"))}
        {bootstrap:row(bootstrap-vue:button-group())}

        <hr/>

        {bootstrap:row(bootstrap:h4("Dropdowns", "bootstrap-vue:dropdown()"))}
        {bootstrap:row(bootstrap-vue:dropdown())}

        <hr/>

        {bootstrap:row(bootstrap:h4("Form Input", "bootstrap-vue:form-input()"))}
        {bootstrap:row(element p {"todo - not rendering"})}

        <hr />

        {bootstrap:row(bootstrap:h4("Form Fieldset", "bootstrap-vue:form-fieldset()"))}
        {bootstrap:row(element p {"todo - not rendering"})}
        
        <hr />

        {bootstrap:row(bootstrap:h4("Form Radio buttons", "bootstrap-vue:forms-radio()"))}
        {bootstrap:row(bootstrap-vue:form-radio())}
        
        <hr />

        {bootstrap:row(bootstrap:h4("Form Checkbox", "bootstrap-vue:form-checkbox()"))}
        {bootstrap:row(bootstrap-vue:form-checkbox())}
        
        <hr />

        {bootstrap:row(bootstrap:h4("Form Select", "bootstrap-vue:form-select()"))}
        {bootstrap:row(bootstrap-vue:form-select())}
        
        <hr />

        {bootstrap:row(bootstrap:h4("Nav", "bootstrap-vue:nav()"))}
        {bootstrap:row(bootstrap-vue:nav())}
       
        <hr />
        {bootstrap:row(bootstrap:h4("Navbar", "bootstrap-vue:navbar()"))}
        {bootstrap:row(bootstrap-vue:navbar())}

        <hr/>
        {bootstrap:row(bootstrap:h4("Pagination", "bootstrap-vue:pagination()"))}
        {bootstrap:row(bootstrap-vue:pagination())}
      
        <hr/>

    </div>)