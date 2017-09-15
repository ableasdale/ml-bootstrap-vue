xquery version "1.0-ml";

module namespace view = "http://www.xmlmachines.com/ml-bootstrap-vue/view.xqy";

import module namespace config = "http://www.xmlmachines.com/ml-bootstrap-vue/config.xqy" at "/lib/config.xqy";

declare function view:bootstrap-vue($content as element(b-container)){
    view:bootstrap($config:APPLICATION-TITLE, $content, ())
};

declare function view:bootstrap($content as element(div)){
    view:bootstrap($config:APPLICATION-TITLE, $content, ())
};

declare function view:bootstrap($title as xs:string, $content as item()){
    view:bootstrap($title, $content, ())
};

declare function view:alert() as json:unquotedString {
    json:unquotedString('<b-alert :show="true" state="success" dismissible>This is an alert</b-alert>')
};

declare function view:bootstrap($title as xs:string, $content as item(), $additional-resource as item()*) {
    xdmp:set-response-content-type("text/html; charset=utf-8"),
    '<!DOCTYPE html>',
    <html lang="en">
        <head>
            <title>{$title}</title>
            <!-- Required meta tags always come first -->
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
            
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous"/>
            <link type="text/css" rel="stylesheet" href="//unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.css"/>
            <!-- link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.css" crossorigin="anonymous"/-->
        </head>
        <body>
            {$content}
            <!-- jQuery first, then Tether, then Bootstrap JS, then vue.js -->
            <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">{" "}</script> -->
            <!-- script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js" integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E=" crossorigin="anonymous">{" "}</script -->
            <!-- script src="/assets/js/app.js">{" "}</script -->
            <!-- script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous">{" "}</script -->
       
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous">{" "}</script>
            <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous">{" "}</script> -->

            
            <script src="https://unpkg.com/vue">{" "}</script>
            
            <!-- Add this after vue.js -->
            <script src="//unpkg.com/babel-polyfill@latest/dist/polyfill.min.js">{" "}</script>
            <script src="//unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.js">{" "}</script>

            <!-- script src="https://raw.githubusercontent.com/wffranco/vue-strap/master/dist/vue-strap.min.js">{" "}</script -->
            <script><![CDATA[

                const items = [
  { isActive: true,  age: 40, name: { first: 'Dickerson', last: 'Macdonald' } },
  { isActive: false, age: 21, name: { first: 'Larsen', last: 'Shaw' } },
  { _rowVariant: 'success',
    isActive: false, age: 9,  name: { first: 'Mini', last: 'Navarro' } },
  { isActive: false, age: 89, name: { first: 'Geneva', last: 'Wilson' } },
  { isActive: true,  age: 38, name: { first: 'Jami', last: 'Carney' } },
  { isActive: false, age: 27, name: { first: 'Essie', last: 'Dunlap' } },
  { isActive: true,  age: 40, name: { first: 'Thor', last: 'Macdonald' } },
  { _cellVariants: { age: 'danger', isActive: 'warning' },
    isActive: true,  age: 87, name: { first: 'Larsen', last: 'Shaw' } },
  { isActive: false, age: 26, name: { first: 'Mitzi', last: 'Navarro' } },
  { isActive: false, age: 22, name: { first: 'Genevive', last: 'Wilson' } },
  { isActive: true,  age: 38, name: { first: 'John', last: 'Carney' } },
  { isActive: false, age: 29, name: { first: 'Dick', last: 'Dunlap' } }
];

                new Vue({ 
                    el: '#app',
                    data: {
                        items: items,
    fields: {
      name:     { label: 'Person Full name', sortable: true },
      age:      { label: 'Person age', sortable: true, 'class': 'text-center'  },
      isActive: { label: 'is Active' },
      actions:  { label: 'Actions' }
    },
                        radioSelected: 'first',
                        radioOptions: [
                            { text: 'Toggle this custom radio', value: 'first' },
                            { text: 'Or toggle this other custom radio', value: 'second' },
                            { text: 'This one is Disabled', value: 'third', disabled: true }
                        ],

                        formSelectSelected: null,
                        formSelectOptions: [
                            { value: null, text: 'Please select some item' },
                            { value: 'a', text: 'This is First option' },
                            { value: 'b', text: 'Default Selected Option' },
                            { value: 'c', text: 'This is another option' },
                            { value: 'd', text: 'This one is disabled', disabled: true }
                        ],
                        dismissSecs: 10,
                        dismissCountDown: 0,
                        showDismissibleAlert: false,
                        message: 'Hello Vue.js!'
                    },
                    methods: {
                    countDownChanged(dismissCountDown) {
                        this.dismissCountDown = dismissCountDown;
                    },
                    showAlert() {
                        this.dismissCountDown = this.dismissSecs;
                    }
                    }
                });     
            ]]></script>
            {$additional-resource}
        </body>
    </html>
};
