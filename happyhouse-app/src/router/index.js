import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";

import Notice from "../views/Notice.vue";
import NoticeList from "../components/notice/NoticeList.vue";
import NoticeWrite from "../components/notice/NoticeWrite.vue";
import NoticeView from "../components/notice/NoticeView.vue";
import NoticeUpdate from "../components/notice/NoticeUpdate.vue";

import Member from "@/views/Member.vue";
import MemberLogin from "@/components/user/MemberLogin.vue";
import MemberJoin from "@/components/user/MemberJoin.vue";
import MemberMyPage from "@/components/user/MemberMyPage.vue";
import MemberFavorite from "@/components/user/MemberFavorite.vue";

import Board from "@/views/Board.vue";
import BoardList from "@/components/board/BoardList.vue";
import BoardWrite from "@/components/board/BoardWrite.vue";
import BoardView from "@/components/board/BoardView.vue";
import BoardUpdate from "@/components/board/BoardUpdate.vue";

import House from "@/views/House.vue";
import Hospital from "@/views/Hospital.vue";

import store from "@/store/index.js";

Vue.use(VueRouter);

// https://router.vuejs.org/kr/guide/advanced/navigation-guards.html
const onlyAuthUser = async (to, from, next) => {
  // console.log(store);
  const checkUserInfo = store.getters["memberStore/checkUserInfo"];
  const getUserInfo = store._actions["memberStore/getUserInfo"];
  let token = sessionStorage.getItem("access-token");
  if (checkUserInfo == null && token) {
    await getUserInfo(token);
  }
  if (checkUserInfo === null) {
    alert("로그인이 필요한 페이지입니다..");
    // next({ name: "SignIn" });
    router.push({ name: "SignIn" });
  } else {
    console.log("로그인 했다.");
    next();
  }
};

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/user",
    name: "Member",
    component: Member,
    children: [
      {
        path: "signin",
        name: "SignIn",
        component: MemberLogin,
      },
      {
        path: "signup",
        name: "SignUp",
        component: MemberJoin,
      },
      {
        path: "mypage",
        name: "MyPage",
        beforeEnter: onlyAuthUser,
        component: MemberMyPage,
      },
      {
        path: "favorite",
        name: "MyFavorite",
        beforeEnter: onlyAuthUser,
        component: MemberFavorite,
      },
    ],
  },
  {
    path: "/qna",
    name: "Board",
    component: Board,
    redirect: "/qna/list",
    children: [
      {
        path: "list",
        name: "BoardList",
        component: BoardList,
      },
      {
        path: "write",
        name: "BoardWrite",
        beforeEnter: onlyAuthUser,
        component: BoardWrite,
      },
      {
        path: "view/:articleno",
        name: "BoardView",
        beforeEnter: onlyAuthUser,
        component: BoardView,
      },
      {
        path: "update/:articleno",
        name: "BoardUpdate",
        beforeEnter: onlyAuthUser,
        component: BoardUpdate,
      },
    ],
  },
  {
    path: "/notice",
    name: "Notice",
    component: Notice,
    redirect: "/notice/list",
    children: [
      {
        path: "list",
        name: "NoticeList",
        component: NoticeList,
      },
      {
        path: "write",
        name: "NoticeWrite",
        beforeEnter: onlyAuthUser,
        component: NoticeWrite,
      },
      {
        path: "view/:articleno",
        name: "NoticeView",
        component: NoticeView,
      },
      {
        path: "update/:articleno",
        name: "NoticeUpdate",
        beforeEnter: onlyAuthUser,
        component: NoticeUpdate,
      },
    ],
  },
  {
    path: "/house",
    name: "House",
    component: House,
  },
  {
    path: "/hospital",
    name: "Hospital",
    component: Hospital,
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
