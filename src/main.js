import Vue from 'vue'
import App from './App.vue'
import { Button, NavBar,Icon, Search,Col, Row ,CellGroup, Cell, Checkbox, CheckboxGroup} from 'vant';

Vue.use(Button);
Vue.use(NavBar);
Vue.use(Icon);
Vue.use(Search);
Vue.use(Col);
Vue.use(Row);
Vue.use(CellGroup);
Vue.use(Cell);
Vue.use(Checkbox);
Vue.use(CheckboxGroup);
new Vue({
  el: '#app',
  render: h => h(App)
})
