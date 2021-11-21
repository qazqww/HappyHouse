<template>
  <v-app-bar app flat>
    <div class="d-flex align-center">
      <v-img
        alt="Vuetify Logo"
        class="shrink mr-2"
        contain
        src="https://cdn.vuetifyjs.com/images/logos/vuetify-logo-dark.png"
        transition="scale-transition"
        width="40"
      />
    </div>

    <v-container class="mx-auto py-0">
      <v-btn depressed :to="{name: 'Notice'}">공지사항</v-btn>
      <v-btn depressed :to="{name: 'About'}"> 아파트 매매 정보 </v-btn>
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

    <v-btn depressed> 로그인 </v-btn>
    <v-btn depressed> 회원가입 </v-btn>

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

<style>
</style>
