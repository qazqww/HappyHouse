<template>
  <v-container>
    <v-row>
      <v-col>
        <v-card class="mx-auto" max-width="800" elevation="2" outlined>
          <v-responsive color="primary" dark>
            <v-container class="mt-4">
              <v-row>
                <v-col cols="2"></v-col>
                <v-col cols="2" align-self="end">아이디</v-col>
                <v-col cols="4">{{ userInfo.userid }}</v-col>
                <v-col cols="2"></v-col>
              </v-row>
              <v-row>
                <v-col cols="2"></v-col>
                <v-col cols="2">비밀번호</v-col>
                <v-text-field
                  type="password"
                  class="pl-3 pr-3"
                  id="userpwd"
                  :disabled="viewMode"
                  v-model="user.userpwd"
                  required
                >
                </v-text-field>
                <v-col cols="2"></v-col>
              </v-row>
              <v-row>
                <v-col cols="2"></v-col>
                <v-col cols="2">이름</v-col>
                <v-text-field
                  class="pl-3 pr-3"
                  id="username"
                  :disabled="viewMode"
                  v-model="user.username"
                  required
                >
                </v-text-field>
                <v-col cols="2"></v-col>
              </v-row>
              <v-row>
                <v-col cols="2"></v-col>
                <v-col cols="2">이메일</v-col>
                <v-text-field
                  class="pl-3 pr-3"
                  id="email"
                  :disabled="viewMode"
                  v-model="user.email"
                  required
                >
                </v-text-field>
                <v-col cols="2"></v-col>
              </v-row>
              <v-row>
                <v-col cols="2"></v-col>
                <v-col cols="2">가입일</v-col>
                <v-col cols="4">{{ userInfo.joindate }}</v-col>
                <v-col cols="2"></v-col>
              </v-row>
            </v-container>
          </v-responsive>
        </v-card>
        <br />
        <v-col offset-md="8">
          <div v-if="this.viewMode">
            <v-btn color="secondary" class="m-1" @click="changeMode"
              >수정하기
            </v-btn>
            &nbsp;
            <v-btn color="error" class="m-1" @click="deleteMember"
              >탈퇴하기
            </v-btn>
          </div>
          <div v-else>
            <v-btn color="primary" class="m-1" @click="modifyMember"
              >확인
            </v-btn>
            &nbsp;
            <v-btn color="error" class="m-1" @click="changeMode">취소 </v-btn>
          </div>
        </v-col>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { mapState, mapMutations } from "vuex";
import { modifyInfo, deleteInfo } from "@/api/member";

const memberStore = "memberStore";

export default {
  name: "MemberMyPage",
  data() {
    return {
      user: {
        userid: "",
        userpwd: "",
        username: "",
        email: "",
      },
      viewMode: false,
    };
  },
  props: {},
  computed: {
    ...mapState(memberStore, ["userInfo"]),
  },
  created() {
    this.viewMode = true;
    this.user = this.userInfo;
  },
  methods: {
    ...mapMutations(memberStore, ["SET_IS_LOGIN", "SET_USER_INFO"]),
    changeMode() {
      if (this.viewMode) {
        this.viewMode = false;
      } else {
        //this.viewMode = true;
        this.$router.push({ name: "Home" });
      }
    },
    modifyMember() {
      modifyInfo(
        this.user,
        ({ data }) => {
          let msg = "수정 처리시 문제가 발생했습니다.";
          if (data === "success") {
            msg = "수정이 완료되었습니다.";
          }
          alert(msg);
          this.moveHome();
        },
        (error) => {
          console.log(error);
        }
      );
    },
    deleteMember() {
      deleteInfo(
        this.user,
        ({ data }) => {
          let msg = "탈퇴 처리시 문제가 발생했습니다.";
          if (data === "success") {
            msg = "탈퇴가 완료되었습니다.";
            this.SET_IS_LOGIN(false);
            this.SET_USER_INFO(null);
            sessionStorage.removeItem("access-token");
          }
          alert(msg);
          this.moveHome();
        },
        (error) => {
          console.log(error);
        }
      );
    },
    moveHome() {
      this.$router.push({ name: "Home" });
    },
    moveMyPage() {
      this.$router.push({ name: "MyPage" });
    },
  },
};
</script>

<style lang="css" scoped>
.v-text-field >>> input {
  font-size: 1.2em;
  font-weight: 400;
  width: 10em;
}
.v-text-field >>> label {
  font-size: 1em;
}
/* .v-text-field >>> button {
  font-size: 0.8em;
} */
</style>
