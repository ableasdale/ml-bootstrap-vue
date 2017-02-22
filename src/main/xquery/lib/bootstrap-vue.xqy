xquery version "1.0-ml";

module namespace bootstrap-vue = "http://www.xmlmachines.com/ml-bootstrap-vue/bootstrap-vue.xqy";

declare namespace v-on = "http://fake.org/fake";
declare namespace v-bind = "http://fake.org/fake2";

declare function bootstrap-vue:button() as element(b-button) {
    <b-button v-bind:size="size" v-bind:variant="variant" v-on:click="clicked">Click Me!</b-button>
};

declare function bootstrap-vue:alert() as element(b-alert) {
    <b-alert v-bind:show="true" state="success" dismissible="dismissable">This is an alert</b-alert>
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


(: TODO - this is rejected right now...
declare function bootstrap-vue:breadcrumb() as element(b-breadcrumb) {
    <b-breadcrumb v-bind:items="[ {text: 'Manage', link: '#', active: true}, {text: 'Library', active: false} ]" />
};
:)
