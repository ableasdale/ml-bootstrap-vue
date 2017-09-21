xquery version "1.0-ml";

import module namespace view = "http://www.xmlmachines.com/ml-bootstrap-vue/view.xqy" at "/lib/view.xqy";
import module namespace config = "http://www.xmlmachines.com/ml-bootstrap-vue/config.xqy" at "/lib/config.xqy";
import module namespace bootstrap-vue = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap-vue.xqy" at "/lib/bootstrap-vue.xqy";
import module namespace bootstrap = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap.xqy" at "/lib/bootstrap.xqy";

declare option xdmp:output "method = html";

view:bootstrap-vue(
    <b-container id="app">
        
        {bootstrap:h2("UI Components", $config:APPLICATION-TITLE)}
        <hr style="border-color: transparent;" class="my-3" />
        
        {
        (: Alerts :)
        bootstrap:h3("Alerts", "Usage Reference")}
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
        <hr />
        <hr style="border-color: transparent;" class="my-5" />

        {
        (: Badges :)
        bootstrap:h3("Badges", "Usage Reference")}
        <hr/>

        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:badge("primary", "NEW")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:badge("primary", "NEW")'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:badge("info", "i")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:badge("info", "i")'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:badge("warning", "BETA")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:badge("warning", "BETA")'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:badge("success","this is a messsage")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:badge("success","this is a messsage")'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{element h5 {"Heading ", bootstrap-vue:badge("primary", "NEW")}}</div>
            <div class="col-10">{element h5 {'element h5 {"Heading ", bootstrap-vue:badge("primary", "NEW")}'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{element p {"Paragraph ", bootstrap-vue:badge("warning", "BETA")}}</div>
            <div class="col-10">{element h5 {'element p {"Paragraph ", bootstrap-vue:badge("warning", "BETA")}'}}</div>
        </div>
        <hr/>
        <hr style="border-color: transparent;" class="my-5" />

        {
        (: Buttons :)
        bootstrap:h3("Buttons", "Usage Reference")}
        <hr/>
        
        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:button("lg", "success", "Success button")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:button("lg", "success", "Success button")'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:button("lg", "danger", "Danger button")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:button("lg", "danger", "Danger button")'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:button("Click me!")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:button("Click me!")'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:button("sm", "info", "Info button")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:button("sm", "info", "Info button")'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:button("sm", "primary", "Primary button")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:button("sm", "primary", "Primary button")'}}</div>
        </div>
        <div class="row mb-3">
            <div class="col-2">{bootstrap-vue:button("sm", "outline-primary", "Primary button")}</div>
            <div class="col-10">{element h5 {'bootstrap-vue:button("sm", "outline-primary", "Primary button")'}}</div>
        </div>

        <hr/>
        <hr style="border-color: transparent;" class="my-5" />

        {
        (: Button Group :)
        bootstrap:h3("Button Group", "Usage Reference")}
        <hr/>
        
        <div class="row mb-3">
            <div class="col-3">{bootstrap-vue:button-group( (bootstrap-vue:button("Left"),bootstrap-vue:button("Middle"),bootstrap-vue:button("Right")) )}</div>
            <div class="col-9"><pre><code>bootstrap-vue:button-group((
    bootstrap-vue:button("Left"),
    bootstrap-vue:button("Middle"),
    bootstrap-vue:button("Right") 
))</code></pre></div>
        </div>

        <div class="row mb-3">
            <div class="col-3">{bootstrap-vue:button-group( (bootstrap-vue:button("sm", "outline-primary", "One"),bootstrap-vue:button("sm", "outline-success", "Two"),bootstrap-vue:button("sm", "outline-danger", "Three")) )}</div>
            <div class="col-9"><pre><code>bootstrap-vue:button-group((
    bootstrap-vue:button("sm", "outline-primary", "One"),
    bootstrap-vue:button("sm", "outline-success", "Two"),
    bootstrap-vue:button("sm", "outline-danger", "Three")
))</code></pre></div>
        </div>

        <hr/>
        <hr style="border-color: transparent;" class="my-5" />



        <hr/>

        {bootstrap:h4("Dropdowns", "bootstrap-vue:dropdown()"),
        bootstrap-vue:dropdown()}

        <hr/>

        {bootstrap:h4("Form Input", "bootstrap-vue:form-input()"),
        bootstrap-vue:form(bootstrap-vue:form-input())
        }

        <hr />

        {bootstrap:h4("Form Fieldset", "bootstrap-vue:form-fieldset()"),
        bootstrap-vue:form-fieldset()
        }
        
        <hr />

        {bootstrap:h4("Form Radio buttons", "bootstrap-vue:forms-radio()"),
        bootstrap-vue:form-radio()}
        
        <hr />

        {bootstrap:h4("Form Checkbox", "bootstrap-vue:form-checkbox()"),
        bootstrap-vue:form-checkbox(), bootstrap-vue:form-checkbox()}
        
        <hr />

        {bootstrap:h4("Form Select", "bootstrap-vue:form-select()"),
        bootstrap-vue:form-select()}
        
        <hr />

        {bootstrap:h4("Nav", "bootstrap-vue:nav()"),
        bootstrap-vue:nav()}
       
        <hr />
        {bootstrap:h4("Navbar", "bootstrap-vue:navbar()"),
        bootstrap-vue:navbar()}

        <hr/>
        {bootstrap:h4("Pagination", "bootstrap-vue:pagination()"),
        bootstrap-vue:pagination()}
      
        <hr/>
        {bootstrap:h4("Popover", "bootstrap-vue:popover()"),
        bootstrap-vue:popover(),
        bootstrap-vue:popover-btn(), 
        bootstrap-vue:popover3()}

        <hr/>
        {bootstrap:h4("Table", "bootstrap-vue:table()"),
        bootstrap-vue:table()}
   
        <hr/>
        {bootstrap:h4("Card", "bootstrap-vue:card()"),
        bootstrap-vue:card()}


        <hr/><hr/>
        {bootstrap-vue:aside()}
        {bootstrap-vue:alert2()}

    </b-container>
)