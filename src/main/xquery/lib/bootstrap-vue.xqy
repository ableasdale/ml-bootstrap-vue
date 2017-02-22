xquery version "1.0-ml";

module namespace bootstrap-vue = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap-vue.xqy";

declare namespace v-on = "http://fake.org/fake";
declare namespace v-bind = "http://fake.org/fake2";

declare function bootstrap-vue:alert() as element(b-alert) {
    <b-alert v-bind:show="true" state="success" dismissible="dismissable">This is an alert</b-alert>
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








