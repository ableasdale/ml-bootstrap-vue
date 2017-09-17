xquery version "1.0-ml";

module namespace bootstrap-vue = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap-vue.xqy";

declare namespace v-on = "http://fake.org/fake";
declare namespace v-bind = "http://fake.org/fake2";

(: Alerts :)
declare function bootstrap-vue:alert() as element(b-alert) {
    <b-alert v-bind:show="true" state="success" v-bind:dismissible="true">This is an alert</b-alert>
};

declare function bootstrap-vue:alert($variant as xs:string) as element(b-alert) {
    <b-alert v-bind:show="true" state="success" variant="{$variant}" v-bind:dismissible="true">This is an alert</b-alert>
};

declare function bootstrap-vue:alert-complex() as element(b-alert) {
    <b-alert v-bind:show="dismissCountDown"
             v-bind:dismissible="true"
             variant="warning"
             v-on:dismissed="dismissCountdown=0"
             v-on:dismiss-count-down="countDownChanged">
      <p>{text{'This alert will dismiss after {{dismissCountDown}} seconds...'}}</p>
      <b-progress variant="warning"
                  v-bind:max="dismissSecs"
                  v-bind:value="dismissCountDown"
                  height="4px">{" "}</b-progress>
    </b-alert>
};

(: Buttons :)

declare function bootstrap-vue:button($message as xs:string) as element(b-button) {
    <b-button v-on:click="clicked">{$message}</b-button>
};

declare function bootstrap-vue:button($size as xs:string, $variant as xs:string, $text as xs:string) as element(b-button) {
    element b-button {
        attribute size{$size},
        attribute variant{$variant},
        $text
    }
};

declare function bootstrap-vue:button-group() as element(b-button-group) {
    <b-button-group>
        <b-button>Left</b-button>
        <b-button>Middle</b-button>
        <b-button>Middle2</b-button>
        <b-button>Right</b-button>
    </b-button-group>
};




declare function bootstrap-vue:countdown-btn() as element(b-btn) {
    <b-btn v-on:click="showAlert" variant="info" class="m-1">Show alert with count-down timer</b-btn>
};

(: TODO - this is rejected right now...
declare function bootstrap-vue:breadcrumb() as element(b-breadcrumb) {
    <b-breadcrumb v-bind:items="[ {text: 'Manage', link: '#', active: true}, {text: 'Library', active: false} ]" />
};
:)

declare function bootstrap-vue:dropdown() as element(b-dropdown) {
    <b-dropdown text="Split Dropdown Button" variant="success" split="split" v-on:click="click">
      <a class="dropdown-item" href="#">Action</a>
      <a class="dropdown-item" href="#">Another action</a>
      <a class="dropdown-item" href="#">Something else here</a>
    </b-dropdown>
};

declare function bootstrap-vue:form($content as item()*) as element(b-form) {
    (:@submit="onSubmit":)
    <b-form>{$content}</b-form>
};

declare function bootstrap-vue:form-input() as item()* {
    <b-form-input v-model="text"
        type="text"
        placeholder="Enter your name"
        v-bind:formatter="format"/>,
    <b-form-text>We will convert your name to lowercase instantly</b-form-text>
};

(:

    <b-form-input v-model="text1"
                  type="text"
                  placeholder="Enter your name"
                  :formatter="format"></b-form-input>
    <b-form-text>We will convert your name to lowercase instantly</b-form-text>
:)

declare function bootstrap-vue:form-fieldset() as element(b-form-fieldset) {
    (: TODO - is this deprecated? :)
    <b-form-fieldset        
        description="We'll convert your name to lowercase automatically."
        label="Example Label">
        <b-form-input v-model="text"/>
    </b-form-fieldset>
};

declare function bootstrap-vue:form-radio() as element(b-form-radio) {
    <b-form-radio v-model="radioSelected" v-bind:options="radioOptions"/>
};
(: <b-form-radio v-model="value" v-bind:items="items" stacked returnObject /> :)

declare function bootstrap-vue:form-checkbox() as element(b-form-checkbox) {
    <b-form-checkbox v-model="check1" _value="Option1" checked="checked">CheckBox Default</b-form-checkbox>
};

declare function bootstrap-vue:form-select() as element(b-form-select) {
    <b-form-select v-model="formSelectSelected"
        v-bind:options="formSelectOptions"
        v-bind:defaultOption="defaultOption"
        label="Example Label"
        description="We'll never share your gender with anyone else."
        feedback="Please Select Some Item"
        state="success">
    </b-form-select>
};

declare function bootstrap-vue:nav() as element(b-nav) {
    <b-nav pills="true">
        <b-nav-item link="#" v-bind:active="true">Active</b-nav-item>
        <b-nav-item link="#">Link</b-nav-item>
        <b-nav-item link="#">Another Link</b-nav-item>
        <b-nav-item link="#" v-bind:disabled="true">Disabled</b-nav-item>
    </b-nav>
};

declare function bootstrap-vue:navbar() as element(b-navbar) {
     <b-navbar toggleable="false">
        <b-nav-toggle target="nav_collapse"/>

        <a class="navbar-brand" to="/">
        <span>Bootstrap4</span>
        </a>

        <b-collapse v-bind:is-nav="true" id="nav_collapse">
            <b-nav is-nav-bar="true">
                <b-nav-item>Support</b-nav-item>
                <b-nav-item>Docs</b-nav-item>
                <b-nav-item>Contact Us</b-nav-item>
            </b-nav>
        </b-collapse>
    </b-navbar>
};

declare function bootstrap-vue:pagination() as element(b-pagination) {
    <b-pagination size="md"
        variant="danger"
        v-bind:total-rows="100"
        v-model="currentPage"
        v-bind:per-page="10">
    </b-pagination>
};

declare function bootstrap-vue:popover() as element(b-popover) {
    <b-popover title="My Popover Title">
      <b-btn v-on:click="clickEventConfirmed">Submit</b-btn>
      <div class="text-xs-center" slot="content">Isnt this lovely?</div>
    </b-popover>
};

declare function bootstrap-vue:popover-btn() {
    <b-btn id="exPopover3" variant="primary">Using slots</b-btn>
};

declare function bootstrap-vue:popover3(){  
    <b-popover target="exPopover3" triggers="hover focus">
        <template slot="title">Content via Slots</template>
        Embedding content <span class="text-danger">using slots</span>
        affords you <em>greater <strong>control.</strong></em> and
        basic HTML support.
    </b-popover>
};

declare function bootstrap-vue:row($content) as element(b-row) {
    (:element div {attribute class {"row"}, $content} :)
    <b-row>{$content}</b-row>
};

declare function bootstrap-vue:table() as element(b-table) {
    <b-table
        v-bind:items="items"
        v-bind:fields="fields"
        pagination="true"
        v-bind:per-page="5">
        <template slot="name" scope="item">{text{"{{item.value.first}} {{item.value.last}}"}}</template>
        <template slot="actions" scope="item">
            <b-btn size="sm" v-on:click="details(item.item)">Details</b-btn>
        </template>
    </b-table>
};

(: Other things that aren't yet documented :)
declare function bootstrap-vue:badge() as element(b-badge) {
    <b-badge>test</b-badge>
};

declare function bootstrap-vue:badge($variant as xs:string, $message as xs:string) as element(b-badge) {
    <b-badge pill="pill" variant="{$variant}">{$message}</b-badge>
};

declare function bootstrap-vue:card() as element(b-card) {
    <b-card>test</b-card>
};

(: below examples are from vuestrap - not working today; might be because they're designed to work with bootstrap 3 and I'm using 4 for this project... :)
declare function bootstrap-vue:aside() {
    <aside v-bind:show.sync="showRight" placement="right" header="Title" width="350">
  ...
</aside>
};

declare function bootstrap-vue:alert2(){
<div>
<button class="btn btn-success btn-lg" v-on:click="showRight = !showRight">Click to toggle alert</button>
      <alert v-model="showRight" placement="top-right" v-bind:duration="3000" type="success" width="400px" dismissable="true">
        <span class="icon-ok-circled alert-icon-float-left">{" "}</span>
        <strong>Well Done!</strong>
        <p>You successfully read this important alert message.</p>
      </alert>
</div>
};







