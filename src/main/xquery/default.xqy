xquery version "1.0-ml";

import module namespace view = "http://www.xmlmachines.com/ml-bootstrap-vue/view.xqy" at "/lib/view.xqy";
import module namespace config = "http://www.xmlmachines.com/ml-bootstrap-vue/config.xqy" at "/lib/config.xqy";
import module namespace bootstrap-vue = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap-vue.xqy" at "/lib/bootstrap-vue.xqy";
import module namespace bootstrap = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap.xqy" at "/lib/bootstrap.xqy";

declare option xdmp:output "method = html";

view:bootstrap-vue(
    <b-container id="app">
        
        {bootstrap:h2("UI Components", $config:APPLICATION-TITLE),
        bootstrap:h4("Buttons", "bootstrap-vue:button()"),
        bootstrap-vue:button()}
        
        <hr/>

        {bootstrap:h4("Alerts", "bootstrap-vue:alert()"),
        bootstrap-vue:alert()}

        <hr/>

        {bootstrap:h4("Alerts", 'bootstrap-vue:alert("success")'),
        bootstrap-vue:alert("success")}

        <hr/>
        
        {bootstrap:h4("Alerts", 'bootstrap-vue:alert-complex()'),
        bootstrap-vue:alert-complex(),
        bootstrap-vue:countdown-btn()}

        <hr/>

        {bootstrap:h4("Button Groups", "bootstrap-vue:button-group()"),
        bootstrap-vue:button-group()}

        <hr/>

        {bootstrap:h4("Dropdowns", "bootstrap-vue:dropdown()"),
        bootstrap-vue:dropdown()}

        <hr/>

        {bootstrap:h4("Form Input", "bootstrap-vue:form-input()"),
        bootstrap-vue:form(bootstrap-vue:form-input()),
        element p {"todo - not rendering"}}

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
        {bootstrap:row(bootstrap:h4("Popover", "bootstrap-vue:popover()"))}
        {bootstrap:row(bootstrap-vue:popover())}
        {(bootstrap-vue:popover-btn(), bootstrap-vue:popover3())}

        <hr/>
        {bootstrap:row(bootstrap:h4("Table", "bootstrap-vue:table()"))}
        {bootstrap:row(bootstrap-vue:table())}

        <hr/>
        {bootstrap:row(bootstrap:h4("Badge", "bootstrap-vue:badge()"))}
        {bootstrap:row(bootstrap-vue:badge())}
        {bootstrap:row(bootstrap-vue:badge("success","this is a messsage"))}
   
        <hr/>
        {bootstrap:row(bootstrap:h4("Card", "bootstrap-vue:card()"))}
        {bootstrap:row(bootstrap-vue:card())}


<hr/><hr/><hr/>
        {bootstrap-vue:aside()}
        {bootstrap-vue:alert2()}

    </b-container>)