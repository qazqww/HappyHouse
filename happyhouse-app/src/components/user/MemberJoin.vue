<template>
  <v-container>
    <v-row>
      <v-col>
        <v-card class="mx-auto" max-width="600">
          <v-form @submit="onSubmit" @reset="onReset">
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
              prepend-icon="mdi-lock"
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
            <v-row><v-col></v-col></v-row>
            <v-row><v-col></v-col></v-row>

            <v-btn color="success" type="submit"> 회원가입 </v-btn>
            <v-btn color="error" type="reset"> 취소 </v-btn>
            <v-row><v-col></v-col></v-row>
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
          let cnt = data.idcount;
          if (cnt == 0) {
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

<style></style>
