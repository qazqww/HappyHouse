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
    <v-spacer></v-spacer>
    <v-container class="col-2">
      <v-btn depressed outlined :to="{ name: 'SignIn' }"> 로그인 </v-btn>

      <v-btn depressed outlined :to="{ name: 'SignUp' }"> 회원가입</v-btn>
    </v-container>

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
export default {
  name: "NaviBar",
};
</script>

<style></style>
