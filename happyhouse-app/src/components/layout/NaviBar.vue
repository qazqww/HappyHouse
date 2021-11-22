<template>
  <v-app-bar app flat>
    <div class="d-flex align-center">
      <router-link to="/">
        <v-img
          alt="Vuetify Logo"
          class="shrink mr-2"
          contain
          src="https://cdn.vuetifyjs.com/images/logos/vuetify-logo-dark.png"
          transition="scale-transition"
          width="40"
        />
      </router-link>
    </div>

    <v-container class="mx-auto py-0">
      <v-btn depressed :to="{ name: 'Board' }"> 게시판 </v-btn>

      <v-btn depressed> ???</v-btn>
      <v-btn depressed> 아파트 정보 </v-btn>
      <v-btn depressed :to="{ name: 'Notice' }">공지사항</v-btn>
      <v-btn depressed :to="{ name: 'House' }"> 아파트 매매 정보 </v-btn>
      <v-btn depressed> QnA </v-btn>
    </v-container>
    <!-- <div class="my-2">
      <v-btn class="hidden-sm-and-down"> 게시판 </v-btn>
    </div>

    <div class="my-2">
      <v-btn small color="secondary" dark> - </v-btn>
    </div>
    <div class="my-2">
      <v-btn small color="secondary" dark> 아파트 정보 </v-btn>
    </div> -->

    <div class="ml-auto" v-if="userInfo">
      <v-menu bottom min-width="200px" rounded offset-y>
        <template v-slot:activator="{ on }">
          <v-btn icon x-large v-on="on">
            <v-avatar color="indigo">
              <v-icon dark> mdi-account-circle </v-icon>
            </v-avatar>
          </v-btn>
        </template>
        <v-card>
          <v-list-item-content class="justify-center">
            <div class="mx-auto text-center">
              <v-avatar color="indigo">
                <v-icon dark> mdi-account-circle </v-icon>
              </v-avatar>
              <h3>{{ userInfo.userid }}</h3>
              <p class="text-caption mt-1">
                {{ userInfo.email }}
              </p>
              <v-divider class="my-3"></v-divider>
              <v-btn depressed rounded text> 내 관심지역 </v-btn>
              <v-divider class="my-3"></v-divider>
              <v-btn depressed rounded text :to="{ name: 'MyPage' }">
                내 정보보기
              </v-btn>
              <v-divider class="my-3"></v-divider>
              <v-btn depressed rounded text @click.prevent="onClickLogout">
                로그아웃
              </v-btn>
            </div>
          </v-list-item-content>
        </v-card>
      </v-menu>
    </div>
    <div v-else>
      <v-container>
        <v-row class="col-2">
          <v-col>
            <v-btn depressed outlined :to="{ name: 'SignIn' }"> 로그인 </v-btn>

            <v-btn depressed outlined :to="{ name: 'SignUp' }"> 회원가입</v-btn>
          </v-col>
        </v-row>
      </v-container>
    </div>

    <!-- <v-avatar color="indigo">
      <v-icon dark> mdi-account-circle </v-icon>
    </v-avatar> -->

    <!-- <v-btn
      href="https://github.com/vuetifyjs/vuetify/releases/latest"
      target="_blank"
      text
    >
      <span class="mr-2">Latest Release</span>
      <v-icon>mdi-open-in-new</v-icon>
    </v-btn> -->
  </v-app-bar>
</template>

<script>
import { mapState, mapMutations } from "vuex";

const memberStore = "memberStore";

export default {
  name: "NaviBar",
  computed: {
    ...mapState(memberStore, ["isLogin", "userInfo"]),
  },
  methods: {
    ...mapMutations(memberStore, ["SET_IS_LOGIN", "SET_USER_INFO"]),
    onClickLogout() {
      this.SET_IS_LOGIN(false);
      this.SET_USER_INFO(null);
      sessionStorage.removeItem("access-token");
      if (this.$route.path != "/") this.$router.push({ name: "Home" });
    },
  },
};
</script>

<style></style>
