<template>
  <v-container>
    <v-row>
      <v-col justify="center" align="center">
        <v-card elevation="0">
          <v-img
            alt="Letter Logo"
            contain
            src="@/assets/letter_logo.png"
            transition="scale-transition"
            width="300"
          />
        </v-card>
      </v-col>
    </v-row>

    <v-row class="text-center">
      <v-col>
        <v-card
          class="d-flex mx-auto justify-center"
          min-height="350"
          max-width="600"
          elevation="2"
          outlined
        >
          <v-form>
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

            <v-col>
              <v-text-field
                id="userid"
                v-model="user.userid"
                label="아이디"
                required
                @keyup.enter="confirm"
                prepend-icon="mdi-account"
              >
              </v-text-field>
            </v-col>
            <v-col
              ><v-text-field
                id="userpwd"
                v-model="user.userpwd"
                label="비밀번호"
                required
                @keyup.enter="confirm"
                prepend-icon="mdi-lock"
              >
              </v-text-field
            ></v-col>

            <br />

            <v-btn
              block
              x-large
              color="primary"
              style="font-size: 20px"
              @click="confirm"
            >
              로그인
            </v-btn>
          </v-form>
        </v-card>
      </v-col>
    </v-row>
    <br />
    <br />
    <v-row justify="center" align="center">
      <v-card elevation="0">
        비밀번호 찾기 &nbsp;&nbsp;|&nbsp;&nbsp; 아이디 찾기
        &nbsp;&nbsp;|&nbsp;&nbsp; 회원가입
      </v-card>
    </v-row>
    <br />
    <br />
    <br />
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

<style lang="css" scoped>
.v-text-field >>> input {
  font-size: 1.2em;
  font-weight: 150;
  width: 20em;
}
.v-text-field >>> label {
  font-size: 1em;
}
/* .v-text-field >>> button {
  font-size: 0.8em;
} */
</style>
