<template>
  <v-container>
    <v-row>
      <v-col justify="center" align="center">
        <h3>로그인 페이지입니다</h3></v-col
      >
    </v-row>

    <v-row>
      <v-col>
        <h3>테스트</h3>
        <v-card class="mx-auto" max-width="600">
          <v-form>
            <v-alert dense text type="success" v-if="isLogin">
              <strong>로그인</strong> 되었습니다.
            </v-alert>
            <v-alert
              dense
              outlined
              type="error"
              dismissible
              v-if="isLoginError"
            >
              <strong>아이디</strong> 또는 <strong>비밀번호</strong>를
              확인하세요.
            </v-alert>

            <v-row><v-col></v-col></v-row>
            <v-text-field
              v-model="user.userid"
              label="아이디"
              required
              placeholder="ID"
              @keyup.enter="confirm"
            >
            </v-text-field>
            <v-text-field
              v-model="user.userpwd"
              label="비밀번호"
              required
              placeholder="PW"
              @keyup.enter="confirm"
            >
            </v-text-field>
            <v-row><v-col></v-col></v-row>
            <v-row><v-col></v-col></v-row>

            <v-btn color="primary" @click="confirm"> 로그인 </v-btn>
            <v-btn color="success" @click="movePage"> 회원가입 </v-btn>

            <v-row><v-col></v-col></v-row>
          </v-form>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { mapState, mapActions } from "vuex";

const memberStore = "memberStore";

export default {
  name: "MemberLogin",
  data() {
    return {
      user: {
        userid: null,
        userpwd: null,
      },
    };
  },
  computed: {
    ...mapState(memberStore, ["isLogin", "isLoginError"]),
  },
  methods: {
    ...mapActions(memberStore, ["userConfirm", "getUserInfo"]),
    async confirm() {
      await this.userConfirm(this.user);
      let token = sessionStorage.getItem("access-token");
      if (this.isLogin) {
        await this.getUserInfo(token);
        this.$router.push({ name: "Home" });
      }
    },
    movePage() {
      this.$router.push({ name: "SignUp" });
    },
  },
};
</script>

<style></style>
