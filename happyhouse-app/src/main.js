import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import vuetify from "./plugins/vuetify";
import vuegooglecharts from "./plugins/vuegooglecharts";

Vue.config.productionTip = false;

new Vue({
  router,
  store,
  vuetify,
  vuegooglecharts,
  render: (h) => h(App),
}).$mount("#app");
