<template>
  <v-app-bar app flat>
    <v-app-bar-nav-icon class="hidden-md-and-up" />
    <v-container class="mx-auto py-0">
      <v-row align="center">
        <router-link to="/">
          <v-img
            class="mx-5"
            alt="HappyHouse Logo"
            contain
            src="@/assets/H_logo.png"
            transition="scale-transition"
            width="35"
          />
        </router-link>
        <v-btn
          large
          depressed
          class="hidden-sm-and-down"
          style="font-size: 15px"
          :to="{ name: 'Notice' }"
          >공지사항
        </v-btn>
        <v-btn
          large
          depressed
          class="hidden-sm-and-down"
          style="font-size: 15px"
          :to="{ name: 'Board' }"
        >
          QnA 게시판
        </v-btn>
        <v-btn
          large
          depressed
          class="hidden-sm-and-down"
          style="font-size: 15px"
          :to="{ name: 'House' }"
        >
          아파트 매매 정보
        </v-btn>
        <v-btn
          large
          depressed
          class="hidden-sm-and-down"
          style="font-size: 15px"
          :to="{ name: 'Hospital' }"
        >
          코로나 선별 진료소
        </v-btn>

        <v-spacer />

        <div class="ml-auto" v-if="userInfo">
          <v-menu bottom min-width="250px" rounded offset-y>
            <template v-slot:activator="{ on }">
              <v-btn color="white" icon v-on="on">
                <v-avatar color="secondary">
                  <v-icon dark> mdi-account-circle </v-icon>
                </v-avatar>
              </v-btn>
            </template>
            <v-card>
              <v-list-item-content class="justify-center">
                <div class="mx-auto text-center">
                  <v-avatar color="secondary">
                    <v-icon dark> mdi-account-circle </v-icon>
                  </v-avatar>
                  <h3>{{ userInfo.userid }}</h3>
                  <p class="text-caption mt-1">
                    {{ userInfo.email }}
                  </p>
                  <v-divider class="my-3"></v-divider>
                  <v-btn depressed rounded text :to="{ name: 'MyFavorite' }">
                    내 관심지역
                  </v-btn>
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
          <v-btn
            color="primary"
            depressed
            style="font-size: 15px"
            :to="{ name: 'SignIn' }"
          >
            로그인
          </v-btn>
          &nbsp;
          <v-btn
            color="secondary"
            depressed
            style="font-size: 15px"
            :to="{ name: 'SignUp' }"
          >
            회원가입</v-btn
          >
        </div>
      </v-row>

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
    </v-container>
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
