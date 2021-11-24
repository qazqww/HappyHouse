<template>
  <v-container>
    <v-row>
      <v-col justify="center" align="center">
        <v-card elevation="0">
          <router-link to="/">
            <v-img
              alt="Letter Logo"
              contain
              src="@/assets/letter_logo.png"
              transition="scale-transition"
              width="300"
            />
          </router-link>
        </v-card>
      </v-col>
    </v-row>
    <v-row class="text-center">
      <v-col>
        <v-card
          class="d-flex mx-auto justify-center"
          max-width="700"
          elevation="2"
          outlined
        >
          <v-form @submit="onSubmit" @reset="onReset">
            <br />
            <v-text-field
              class="pl-3 pr-3"
              id="userid"
              v-model="user.userid"
              label="아이디"
              required
              placeholder="아이디 입력..."
              @keyup="idCheck"
              prepend-icon="mdi-account"
            >
            </v-text-field>
            <div id="idresult" class="mt-1">{{ idresult }}</div>

            <v-text-field
              class="pl-3 pr-3"
              id="userpwd"
              v-model="user.userpwd"
              label="비밀번호"
              required
              placeholder="영문 숫자 포함 6자리 이상"
              prepend-icon="mdi-lock"
            >
            </v-text-field>

            <v-text-field
              class="pl-3 pr-3"
              id="username"
              v-model="user.username"
              label="이름"
              required
              placeholder="이름 입력.."
              prepend-icon="mdi-pen"
            >
            </v-text-field>

            <v-text-field
              class="pl-3 pr-3"
              id="email"
              v-model="user.email"
              label="이메일"
              required
              placeholder="e-mail"
              prepend-icon="mdi-email"
            >
            </v-text-field>
            <br />
            <v-btn
              block
              x-large
              style="font-size: 20px"
              color="primary"
              type="submit"
            >
              회원가입
            </v-btn>
            <v-btn
              block
              x-large
              style="font-size: 20px"
              color="secondary"
              type="reset"
            >
              취소
            </v-btn>
            <br />
            <br />
          </v-form>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { joinMember, checkId } from "@/api/member";

export default {
  name: "MemberJoin",
  data() {
    return {
      user: {
        userid: "",
        userpwd: "",
        username: "",
        email: "",
      },
      idresult: "",
    };
  },
  props: {},
  created() {},
  methods: {
    onSubmit(event) {
      event.preventDefault();
      this.registerMember();
    },
    onReset(event) {
      event.preventDefault();
      this.user.userid = "";
      this.user.userpwd = "";
      this.user.username = "";
      this.user.email = "";
    },
    idCheck() {
      checkId(
        this.user.userid,
        ({ data }) => {
          if (data === "success") {
            this.idresult = this.user.userid + "는 사용 가능합니다.";
          } else {
            this.idresult = this.user.userid + "는 사용할 수 없습니다.";
          }
        },
        (error) => {
          console.log(error);
        }
      );
    },
    registerMember() {
      console.log(this.user);
      joinMember(
        this.user,
        ({ data }) => {
          let msg = "회원가입 처리시 문제가 발생했습니다.";
          if (data === "success") {
            msg = "회원가입이 완료되었습니다.";
          }
          alert(msg);
          this.$router.push({ name: "SignIn" });
        },
        (error) => {
          console.log(error);
        }
      );
    },
  },
};
</script>

<style lang="css" scoped>
.v-text-field >>> input {
  font-size: 1.2em;
  font-weight: bold;
  width: 20em;
}
.v-text-field >>> label {
  font-size: 1em;
}
/* .v-text-field >>> button {
  font-size: 0.8em;
} */
</style>
