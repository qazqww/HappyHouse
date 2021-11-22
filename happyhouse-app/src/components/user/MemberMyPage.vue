<template>
  <v-container>
    <v-row>
      <v-col></v-col>
      <v-col cols="12">
        <v-jumbotron>
          <template #header>My Page</template>

          <template #lead> 내 정보 확인페이지입니다. </template>

          <hr class="my-4" />

          <v-container class="mt-4">
            <v-row>
              <v-col cols="2"></v-col>
              <v-col cols="2" align-self="end">아이디</v-col
              ><v-col cols="4">{{ userInfo.userid }}</v-col>
              <v-col cols="2"></v-col>
            </v-row>
            <v-row>
              <v-col cols="2"></v-col>
              <v-col cols="2">이름</v-col
              ><v-col cols="4">{{ userInfo.username }}</v-col>
              <v-col cols="2"></v-col>
            </v-row>
            <v-row>
              <v-col cols="2"></v-col>
              <v-col cols="2">이메일</v-col
              ><v-col cols="4">{{ userInfo.email }}</v-col>
              <v-col cols="2"></v-col>
            </v-row>
            <v-row>
              <v-col cols="2"></v-col>
              <v-col cols="2">가입일</v-col
              ><v-col cols="4">{{ userInfo.joindate }}</v-col>
              <v-col cols="2"></v-col>
            </v-row>
          </v-container>
          <hr class="my-4" />

          <v-btn color="primary" href="#">정보수정</v-btn>
          <v-btn color="error" href="#">회원탈퇴</v-btn>
        </v-jumbotron>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { mapState } from "vuex";

const memberStore = "memberStore";

export default {
  name: "MemberMyPage",
  components: {},
  computed: {
    ...mapState(memberStore, ["userInfo"]),
  },
};
</script>

<style></style>
