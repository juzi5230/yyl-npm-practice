
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
// Vue.use(AppHeader);
import yylNpmPractice from './src/yyl-npm-practice.vue' // 导入组件
const Mains = {
    install(Vue, options) {
        Vue.component(yylNpmPractice.name, yylNpmPractice)
    }
}
if (typeof window !== 'undefined' && window.Vue) {
    window.Vue.use(Mains);
}
export default Mains