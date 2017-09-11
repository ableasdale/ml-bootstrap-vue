xquery version "1.0-ml";

module namespace bootstrap-vue = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap-vue.xqy";

declare namespace v-on = "http://fake.org/fake";
declare namespace v-bind = "http://fake.org/fake2";

declare function bootstrap-vue:alert() as element(b-alert) {
    <b-alert v-bind:show="true" state="success" dismissible="dismissable">This is an alert</b-alert>
};

declare function bootstrap-vue:alert($variant as xs:string) as element(b-alert) {
    <b-alert v-bind:show="true" state="success" variant="{$variant}" dismissible="dismissable">This is an alert</b-alert>
};

declare function bootstrap-vue:alert-complex() as element(b-alert) {
    <b-alert v-bind:show="dismissCountDown"
             dismissible="dismissable"
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

declare function bootstrap-vue:countdown-btn() as element(b-btn) {
    <b-btn v-on:click="showAlert" variant="info" class="m-1">Show alert with count-down timer</b-btn>
};

(: TODO - this is rejected right now...
declare function bootstrap-vue:breadcrumb() as element(b-breadcrumb) {
    <b-breadcrumb v-bind:items="[ {text: 'Manage', link: '#', active: true}, {text: 'Library', active: false} ]" />
};
:)

declare function bootstrap-vue:button() as element(b-button) {
    <b-button v-bind:size="size" v-bind:variant="variant" v-on:click="clicked">Click Me!</b-button>
};

declare function bootstrap-vue:button-group() as element(b-button-group) {
    <b-button-group>
      <b-button>Left</b-button>
      <b-button>Middle</b-button>
      <b-button>Right</b-button>
    </b-button-group>
};

declare function bootstrap-vue:dropdown() as element(b-dropdown) {
    <b-dropdown text="Split Dropdown Button" variant="success" split="split" v-on:click="click">
      <a class="dropdown-item" href="#">Action</a>
      <a class="dropdown-item" href="#">Another action</a>
      <a class="dropdown-item" href="#">Something else here</a>
    </b-dropdown>
};

declare function bootstrap-vue:form-input() as element(b-form-input) {
    <b-form-input v-model="text"
        type="text"
        placeholder="Enter your name"
        v-bind:state="text.length?'success':'warning'"
        v-bind:formatter="format">
    </b-form-input>
};

declare function bootstrap-vue:form-fieldset() as element(b-form-fieldset) {
    <b-form-fieldset
        v-bind:feedback="text.length?'':'Please enter something'"
        description="We'll convert your name to lowercase automatically."
        label="Example Label"
        v-bind:state="text.length?'success':'warning'">
        <b-form-input v-model="text"></b-form-input>
    </b-form-fieldset>
};

declare function bootstrap-vue:form-radio() as element(b-form-radio) {
    <b-form-radio v-model="value" v-bind:items="items"/>
};
(: <b-form-radio v-model="value" v-bind:items="items" stacked returnObject /> :)

declare function bootstrap-vue:form-checkbox() as element(b-form-checkbox) {
    <b-form-checkbox v-model="check1" _value="Option1" checked="checked">CheckBox Default</b-form-checkbox>
};

declare function bootstrap-vue:form-select() as element(b-form-select) {
    <b-form-select v-model="selected"
        v-bind:options="options"
        v-bind:defaultOption="defaultOption"
        label="Example Label"
        description="We'll never share your gender with anyone else."
        feedback="Please Select Some Item"
        state="success">
    </b-form-select>
};

declare function bootstrap-vue:nav() as element(b-nav) {
    <b-nav pills="true">
        <b-nav-item link="#" active="true">Active</b-nav-item>
        <b-nav-item link="#">Link</b-nav-item>
        <b-nav-item link="#">Another Link</b-nav-item>
        <b-nav-item link="#" disabled="true">Disabled</b-nav-item>
    </b-nav>
};

declare function bootstrap-vue:navbar() as element(b-navbar) {
     <b-navbar toggleable="false">
        <b-nav-toggle target="nav_collapse"/>

        <a class="navbar-brand" to="/">
        <span>Bootstrap4</span>
        </a>

        <b-collapse isNav="isNav" id="nav_collapse">
            <b-nav isNavBar="isNavBar">
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

declare function bootstrap-vue:table() as element(b-table) {
    <b-table
        v-bind:items="items"
        v-bind:fields="fields"
        pagination="true"
        v-bind:perPage="3">
        <template slot="name" scope="item">
            text{"{ {item.value.first}} { {item.value.last}}"}
        </template>
        <template slot="actions" scope="item">
            <b-btn size="sm" v-on:click="details(item.item)">Details</b-btn>
        </template>
    </b-table>
};

(: Other things that aren't yet documented :)
declare function bootstrap-vue:badge() as element(b-badge) {
    <b-badge>test</b-badge>
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







